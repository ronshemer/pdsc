/*
 * Based on http://sohu.io/questions/2211707/comparison-method-violates-its-general-contract
 *
 */
 int compare(int o1_getFileName, int o2_getFileName, int o1_getFileName_toLowerCase_endsWith[], int o2_getFileName_toLowerCase_endsWith[],int o1_getSubject, int o2_getSubject){
    if ((o1_getFileName != 0) && (o2_getFileName != 0)){
        if (o1_getFileName_toLowerCase_endsWith[1]) // ".nfo"
            return -1000;
        else if (o2_getFileName_toLowerCase_endsWith[1]) // ".nfo"
            return 1000;
        else if (o1_getFileName_toLowerCase_endsWith[2]) // ".sfv"
            return -999;
        else if (o2_getFileName_toLowerCase_endsWith[2]) // ".sfv"
            return 1001;
        else if (o1_getFileName_toLowerCase_endsWith[3]) // ".srr"
            return -998;
        else if (o2_getFileName_toLowerCase_endsWith[3]) // ".srr"
            return 1002;
        else if (o1_getFileName_toLowerCase_endsWith[4]) // ".nzb"
            return -997;
        else if (o2_getFileName_toLowerCase_endsWith[4]) // ".nzb"
            return 1003;
        else if (o1_getFileName_toLowerCase_endsWith[5]) //".srt"
            return -996;
        else if (o2_getFileName_toLowerCase_endsWith[5]) // ".srt"
            return 1004;
        else
            return o1_getFileName - o2_getFileName;
    }
    else if ((o1_getFileName != 0) && (o2_getFileName == 0))
    {
        return -995;
    }
    else if ((o1_getFileName == 0) && (o2_getFileName != 0))
    {
        return 1005;
    }
    else
    {
        return o1_getSubject-o2_getSubject;
    }
  }
