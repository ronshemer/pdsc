/*
 * Based on http://stackoverflow.com/questions/30458633/why-does-my-compare-methd-throw-illegalargumentexception-sometimes
 *
 */
int compare (int o1_getFileName, int o2_getFileName, int o1_toInt, int o2_toInt) {
				int result = 0;
        if (o1_toInt == 0){
          if (o2_toInt == 0){
            return 0;
          } else {
            return 1;
          }
        } else if (o2_toInt == 0) {
          return -1;
        }

        int n1 = o1_getFileName;
        int n2 = o2_getFileName;
        if (n1 == 0) {
          if (n2 == 0) {
            return 0;
          } else {
            return 1;
          }
        } else if (n2 == 0) {
          return -1;
        }
        return n1 - n2;
	 }