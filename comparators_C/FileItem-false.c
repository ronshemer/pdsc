/* 
 * Based on http://stackoverflow.com/questions/30458633/why-does-my-compare-methd-throw-illegalargumentexception-sometimes
 *
 */

int compare (int o1_getFileName, int o2_getFileName, int o1_toInt, int o2_toInt) {
				int result = 0;
        if ((o1_toInt != 0) && (o2_toInt != 0)) {

            int n1 = o1_getFileName;
            int n2 = o2_getFileName;

            if ((n1 != 0) && (n2 != 0))
                result = n1 - n2; //n1.compareTo(n2);
        }
        return result;
	 }