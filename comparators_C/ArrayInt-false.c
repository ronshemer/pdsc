/*
 * Based on http://stackoverflow.com/questions/23907134/comparing-two-arrays-using-dictionary-order-in-an-array-of-arrays-java
 * 
 */

int compare(int o1_length, int o2_length,int o1_get[], int o2_get[]){
     int index, aentry, bentry;
     index = 0;
     
     while ((index < o1_length) && (index < o2_length)) {
       aentry = o1_get[index];
       bentry = o2_get[index];
       if (aentry < bentry) {
           return -1;
       }
       if (aentry > bentry) {
           return 1;
       }
       index++;
     }
     
     return 0;
   }
