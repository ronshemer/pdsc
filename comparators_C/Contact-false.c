/* 
 * Based on http://stackoverflow.com/questions/26336978/comparison-method-violates-its-general-contract-and-method-compareto
 *
 */
int compare(int o1_getFirstName, int o2_getFirstName,int o1_getLastName, int o2_getLastName,int o1_getEmails, int o2_getEmails) {
      int compareFirstName = 0;
      if ((o1_getFirstName != 0) && (o2_getFirstName != 0)) {
        compareFirstName = o1_getFirstName-o2_getFirstName;

        if (compareFirstName == 0) {
            int compareLastName = 0;
            if ((o1_getLastName != 0) && (o2_getLastName != 0)) {
                compareLastName = o1_getLastName-o2_getLastName;

                if (compareLastName == 0) {
                    int compareEmail = 0;
                    if ((o1_getEmails != 0) && (o2_getEmails != 0)) {
                        compareEmail = o1_getEmails-o2_getEmails;
                        return compareEmail;
                    } else {
                        return 0;
                    }
                } else {
                    return compareLastName;
                }
            } else {
                int compareEmail = 0;
                if ((o1_getEmails != 0) && (o2_getEmails != 0)) {
                    compareEmail = o1_getEmails-o2_getEmails;
                    return compareEmail;
                } else {
                    return 0;
                }
            }
        } else {
            return compareFirstName;
        }
    } else {
        int compareLastName = 0;
        if ((o1_getLastName != 0) && (o2_getLastName != 0)) {
            compareLastName = o1_getLastName-o2_getLastName;

            if (compareLastName == 0) {
                int compareEmail = 0;
                if ((o1_getEmails != 0) && (o2_getEmails != 0)) {
                    compareEmail = o1_getEmails-o2_getEmails;
                    return compareEmail;
                } else {
                    return 0;
                }
            } else {
                return compareLastName;
            }
        } else {
            int compareEmail = 0;
            if ((o1_getEmails != 0) && (o2_getEmails != 0)) {
                compareEmail = o1_getEmails-o2_getEmails;
                return compareEmail;
            } else {
                return 0;
            }
        }
    }
  }