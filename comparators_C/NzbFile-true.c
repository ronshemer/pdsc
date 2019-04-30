/*
 * Based on http://sohu.io/questions/2211707/comparison-method-violates-its-general-contract
 * Not working yet!
 */
//   int pred_i_gteq_0(int i){
//   return i>0;
//   }
//   int pred_i_lt_5(int i){
//   return i<5;
//   }



  int compare(int o1_getFileName, int o2_getFileName, int o1_getFileName_toLowerCase_endsWith[], int o2_getFileName_toLowerCase_endsWith[],int o1_getSubject, int o2_getSubject){
    if (o1_getFileName == o2_getFileName && o1_getFileName_toLowerCase_endsWith == o2_getFileName_toLowerCase_endsWith && o1_getSubject == o2_getSubject) { return 0; }

    if ((o1_getFileName != 0) && (o2_getFileName != 0)){
        int i = 0;
        while (i < 5){
          if(o1_getFileName_toLowerCase_endsWith[i] && o2_getFileName_toLowerCase_endsWith[i]){
            return 0;
          }
           if(o1_getFileName_toLowerCase_endsWith[i]){
            return -1000+i;
          }
          if(o2_getFileName_toLowerCase_endsWith[i]){
            return 1000+i;
          }
          i++;
        }
        return o1_getFileName-o2_getFileName;
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
        return o1_getSubject - o2_getSubject;
    }
  }
