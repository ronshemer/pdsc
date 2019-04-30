/*
 * Based on http://stackoverflow.com/questions/26322215/comparison-logic-error-with-economic-data-comparison-method-violates-its-gener
 * 
 */
int compare(int o1_fiscalQuarter,int o2_fiscalQuarter,int o1_sectorCode, int o2_sectorCode ,int o1_industryCode,int o2_industryCode) {
    int fiscalResult = o1_fiscalQuarter - o2_fiscalQuarter;
    if (fiscalResult > 0) {
        return fiscalResult;
    }
    if (fiscalResult < 0) {
        return fiscalResult;
    } 
    
    if (o1_sectorCode > 0) {
        if (o1_sectorCode > o2_sectorCode) {
            return o1_sectorCode - o2_sectorCode;
        }
        else {
          if (o1_sectorCode < o2_sectorCode){
            return o2_sectorCode - o1_sectorCode;
          } else {
            return 0; // Should never happen
          }
        }
    } else {
      if (o1_industryCode > 0) {
        if (o1_industryCode > o2_industryCode) {
            return o1_industryCode - o2_industryCode;
        }
        else {
          if (o1_industryCode < o2_industryCode) {
            return o2_industryCode - o1_industryCode;
          } else {
            return 0; // Should never happen
          }
        }
      }// These should never be reached
      else { 
        if (o1_sectorCode > 0) {
          return -1;
        } else {
          if (o2_industryCode > 0) {
            return -1;
          } else {
            return 0;
          }
        }
      }
    }
  }