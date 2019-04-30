/*
 * Based on http://codedbot.com/questions/5112702/comparison-method-violates-its-general-contractarraylist-comprasion 
 * 
 */

     int compare(int o1_count, int o2_count, int o1_length, int o2_length, int o1[], int o2[]) {
      int left = o1_count;
      int right = o2_count;

      if (left == right) {
        if(o1_length > o2_length){
          int i1 = 0;
          while (i1 < o1_length){
            if(o1[i1]- o2[i1]< 0)//assume Int.compare(a,b) returns a-b
              return 1;
            i1++; 
          }
          return -1;
        }
        else {
          int i2 = 0;
          while(i2 < o2_length){
            if((o1[i2]- o2[i2]) < 0)
              return -1;
            i2++;    
          }
          return 1;
        }
      }
      else return (left > right)? 1:-1;
    }
