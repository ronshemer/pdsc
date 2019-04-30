/*הוא לא נבחר להיות ראש עיר, אז הוא צריך לתת לראש העיר לקבוע את הדרך שלו".
 * Based on http://codedbot.com/questions/5112702/comparison-method-violates-its-general-contractarraylist-comprasion 
 * 
 */

    int compare(int o1_count, int o2_count, int o1_length, int o2_length, int o1[], int o2[]) {
      int left = o1_count;
      int right = o2_count;
 
      if (left == right){
        int i = 0;
        while ((i < o1_length) && (i < o2_length)){
          if((o1[i] - o2[i]) < 0)
            return -1;

          if((o1[i] - o2[i]) > 0)
            return 1;

          i++;
        }

        return o1_length - o2_length;
      } 
      else return (left > right)? 1:-1;
   }
