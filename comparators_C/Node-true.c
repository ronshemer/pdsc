/*
 * Based on http://stackoverflow.com/questions/19325256/java-lang-illegalargumentexception-comparison-method-violates-its-general-contr
 *
 */
int compare(int o1_getID,int o2_getID,int o1_containsKey[],int o2_containsKey[] ,int o1_get[], int o2_get[]){
    if(o1_containsKey[o1_getID] && o2_containsKey[o2_getID]){
      int order1 = o1_get[o1_getID];
      int order2 = o2_get[o2_getID];

      if(order1 < order2)
        return -1;
      else if(order1 > order2)
        return 1;
      else
        return 0;
    }

    return o1_get[o1_getID] - o2_get[o2_getID];
  }