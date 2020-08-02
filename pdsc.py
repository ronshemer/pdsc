import argparse
import io
import tarfile 
import time 
from z3 import *
import datetime
import docker
import sys

from dynamic_sc_pdr import DynamicSelfCompositionPDR
import os

def is_valid_file(parser, arg):
    if not os.path.exists(arg):
        parser.error("Invalid file %s" % arg)
    else:
        return arg

def check_prop(value):
    ivalue = int(value)
    if ivalue not in [1,2,3]:
        raise argparse.ArgumentTypeError("invalid property: %s" % value)
    return ivalue

def copy_to_container(cont, artifact_file):
    with create_archive(artifact_file) as archive:
        cont.put_archive(path='/opt/seahorn', data=archive)

def create_archive(artifact_file):
    pw_tarstream = io.BytesIO()
    pw_tar = tarfile.TarFile(fileobj=pw_tarstream, mode='w')
    file_data = open(artifact_file, 'rb').read()
    tarinfo = tarfile.TarInfo(name=os.path.basename(artifact_file))
    tarinfo.size = len(file_data)
    tarinfo.mtime = time.time()
    # tarinfo.mode = 0600
    try:
        pw_tar.addfile(tarinfo, io.BytesIO(file_data))
    except:
        print("Unexpected error:", sys.exc_info()[0])
    pw_tar.close()
    pw_tarstream.seek(0)
    return pw_tarstream

def copy_from_container(cont, filename):
    bits, stat = cont.get_archive(path='/opt/seahorn/smt/'+filename)
    tar_path = '/tmp/temp.tar'
    temp_tar = open(tar_path, 'wb')
    for chunk in bits:
        temp_tar.write(chunk)
    temp_tar.flush()
    temp_tar.close()
    my_tar = tarfile.open(tar_path, mode='r')
    smt_file = my_tar.getmembers()[0]
    f=my_tar.extractfile(smt_file)
    content=f.read()
    out_file=open('/tmp/'+filename,'wb')
    try:
        out_file.write(content)
    except:
        print("Unexpected error:", sys.exc_info()[0])
    my_tar.close()
    out_file.flush()
    out_file.close()
    return '/tmp/'+filename

def get_smt2(c_file):
    print (c_file+': Translating to smt2 with SeaHorn')
    client = docker.from_env()
    seahorn_container = None
    for container in client.containers.list(all=True):
        if 'seahorn' in str(container.image):
            seahorn_container = container
            print("working with "+container.id+" ("+str(container.image)+")")
            break
    seahorn_container.start()
    copy_to_container(seahorn_container,c_file)
    seahorn_container.exec_run('bash run_seahorn.sh',workdir='/opt/seahorn')
    print ('bash run_seahorn.sh')
    return copy_from_container(seahorn_container,os.path.basename(c_file)[:-1]+'smt2')

def main():
    parser = argparse.ArgumentParser("Property Directed Self Composition")
    input_type_group = parser.add_mutually_exclusive_group(required=True)
    input_type_group.add_argument('-semantic',help="parse and verify an SMT2 file with a k-safety problem", action="store_true")
    input_type_group.add_argument('-comparator',help="parse and verify a C file with a comparator problem", action="store_true")
    parser.add_argument('-f','--file',required=True,help="path to input file",type=lambda x: is_valid_file(parser, x))
    parser.add_argument('-p','--property',help="property 1,2 or 3 of comparator", type=check_prop)
    parser.add_argument('-log',help='print traces', action="store_true")
    args = parser.parse_args()
    
    print_table = False
    file_list = []
    table = ""

    if args.comparator and os.path.isdir(args.file):
        print_table=True
        file_list = [(args.file+'/'+f) for f in os.listdir(args.file)]
    else:
        file_list = [args.file]
    for curr_file in file_list:
        try:
            filename = get_smt2(curr_file) if args.comparator else curr_file
            print("PDSC: Verifying " + filename)
            pp_start = datetime.datetime.now()
            solver = DynamicSelfCompositionPDR(filename, force_predicate_abstraction=True, is_comparator=args.comparator, method_name="compare", bmc="True", explicit_conposition_function=True,print_log=args.log,prop=args.property)
            pp_end = datetime.datetime.now()
            start = datetime.datetime.now()
            msg, smt_count, num_preds = solver.solve()
            end = datetime.datetime.now()
            print(msg)
            delta = end - start
            pp_delta = pp_end - pp_start
            print("Pre-processing time:\t" + str(pp_delta.total_seconds()) + " \nSolver time:\t" + str(delta.total_seconds()) + "\nTotal time:\t"+     str(delta.total_seconds()+pp_delta.total_seconds()) + "\nIteration count:\t"+str(smt_count) + "\nPredicate count:\t" + str(num_preds))
            if "violated" in msg or "starvation" in msg:
                table += filename + ";\t" + str(delta.total_seconds()) + ";\t" + str(pp_delta.total_seconds() +delta.total_seconds()) + ";\t" + "N" + ";" + str(smt_count) + ";" + str(num_preds) + "\n"
            else:
                table += filename + ";\t" + str(delta.total_seconds()) + ";\t" + str(pp_delta.total_seconds() + delta.total_seconds()) + ";\t" + "Y" + ";" + str(smt_count) + ";" + str(num_preds) + "\n"
        except:
            print("Unexpected error:", sys.exc_info()[0])
            table += curr_file + ";\t" + str(0) + ";\t" + str(0) + ";\t" + "F" + ";" + str(0) + ";" + str(0) + "\n"
    if print_table:
        print(table)

if __name__ == '__main__':
    sys.exit(main())
