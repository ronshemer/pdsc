/*
 * Based on http://stackoverflow.com/questions/16809000/how-to-make-the-compareto-method-respect-the-general-contract
 * 
 */
int compare(int o1_isNull, int o2_isNull, int o1_getScore[], int o2_getScore[]) {
      assume(o1_isNull != 0);
      if(o2_isNull == 0)
          return(1);
      int comp = 0;
      int i = 0;
      while(i < 5){
          comp = o1_getScore[i]-o2_getScore[i];
          if (comp!=0)
           return comp;            
          i++;
      }

      return 0;
  }
