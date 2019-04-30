mkdir smt
for i in *.c; do
    [ -f "$i" ] || break
    sea clang -S -O0 -g -fno-inline-functions $i
    i2=${i::-2}
    sea pp -o $i2.pp.ll -S $i2.ll
    sea horn -o smt/$i2.smt2 --step=flarge --horn-no-verif --horn-global-constraints=true --horn-singleton-aliases=true --horn-split-only-critical=true --horn-use-write=true $i2.pp.ll
    head -n -2 smt/$i2.smt2 > smt/$i2.smt2.tmp
    mv smt/$i2.smt2{.tmp,}
done