/*
 * Based on http://stackoverflow.com/questions/16809000/how-to-make-the-compareto-method-respect-the-general-contract
 *
 */

int compare(int o1_isNull, int o2_isNull, int o1_getScore[], int o2_getScore[]) {
      assume(o1_isNull != 0);
      if(o2_isNull == 0)
          return 1;
      int comp = 0;
      comp += o1_getScore[1] == o2_getScore[1] ? 0 : o1_getScore[1] > o2_getScore[1] ? 1 : -1; 
      comp += o1_getScore[2] == o2_getScore[2] ? 0 : o1_getScore[2] > o2_getScore[2] ? 1 : -1; 
      comp += o1_getScore[3] == o2_getScore[3] ? 0 : o1_getScore[3] > o2_getScore[3] ? 1 : -1; 
      comp += o1_getScore[5] == o2_getScore[5] ? 0 : o1_getScore[5] > o2_getScore[5] ? 1 : -1; 
      comp += o1_getScore[7] == o2_getScore[7] ? 0 : o1_getScore[7] > o2_getScore[7] ? 1 : -1; 
      if(comp == 0)
          return(0);
      if(comp > 0)
          return 1;
      else
          return -1;
  }