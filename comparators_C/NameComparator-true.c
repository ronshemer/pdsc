/*
 * Based on http://stackoverflow.xluat.com/questions/31235938/java-order-by-priority-list
 * 
 */

int compare(int o1_Name, int o2_Name, int nondet[]){
     int x = o1_Name;
     int y = o2_Name;
     if(x == y){ return 0; }
     
     int i=0;     
     int currentName;

     while(i < 3){       
       currentName = nondet[i];
       if(currentName == x) {
         return 1;
       }
   
       if(currentName == y) {
         return -1;
       }
       i++;
     }
     
     return x-y;
   }

