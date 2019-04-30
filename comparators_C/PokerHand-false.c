/* http://stackoverflow.com/questions/30449488/comparison-method-violates-its-general-contract-everything-seems-ok */
int compare(int o1_indexOf[],int o2_indexOf[],int o1_charAt[],int o2_charAt[], int o1_countOccurrencesOf[],int o2_countOccurrencesOf[], int o1_lastIndexOf[],int o2_lastIndexOf[]) {
        if ((o1_indexOf[4] != -1) || (o2_indexOf[4] != -1)) {  // Four of a kind
            if (o1_indexOf[4] == o2_indexOf[4]) {
                int i1 = 0;
                while(i1 <= 12){
                    if ((o1_charAt[i1] != 0) && (o1_charAt[i1] != 4) && (o2_charAt[i1] != 0) && (o2_charAt[i1] != 4)) {
                        return 0;
                    }
                    if ((o1_charAt[i1] != 0) && (o1_charAt[i1] != 4)) {
                        return -1;
                    }
                    if ((o2_charAt[i1] != 0) && (o2_charAt[i1] != 4)) {
                        return 1;
                    }
                    i1++;
                }
            }
            return o1_indexOf[4] - o2_indexOf[4];
        }
        int tripleCount1 = o1_countOccurrencesOf[3];
        int tripleCount2 = o2_countOccurrencesOf[3];
        if ((tripleCount1 > 1) || ((tripleCount1 == 1) && (o1_indexOf[2] != -1)) || (tripleCount2 > 1) || ((tripleCount2 == 1) && (o2_indexOf[2] != -1))) {  // Full house
            int higherTriple = o1_lastIndexOf[3];
            if (higherTriple == o2_lastIndexOf[3]) {
                int i2=0;
                while(i2 <= 12){
                    if ((i2 != higherTriple) && (((o1_charAt[i2] == 2) || (o1_charAt[i2] == 3)) && ((o2_charAt[i2] == 2) || (o2_charAt[i2] == 3)))) {
                        return 0;
                    }
                    if ((i2 != higherTriple) && ((o1_charAt[i2] == 2) || (o1_charAt[i2] == 3))) {
                        return -1;
                    }
                    if ((i2 != higherTriple) && ((o2_charAt[i2] == 2) || (o2_charAt[i2] == 3))) {
                        return 1;
                    }
                    i2++;
                }
            }
            return higherTriple - o2_lastIndexOf[3];
        }
        return 0;
    }
