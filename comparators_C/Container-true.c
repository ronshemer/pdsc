/* 
 * Based on http://stackoverflow.com/questions/20970217/why-does-my-comparison-method-violate-its-general-contract
 *
 */
int compare(int o1_dTime, int o2_dTime,int o1_departureMaxDuration, int o2_departureMaxDuration,int o1_departureTransportCompany, int o2_departureTransportCompany,int o1_departureTransportType, int o2_departureTransportType) {
      int rv;
      // Times
      rv = o1_dTime - o2_dTime;
      if (rv == 0) {
          // Duration
          if (o1_departureMaxDuration < o2_departureMaxDuration) {
              rv = -1;
          }
          else if (o1_departureMaxDuration > o2_departureMaxDuration) {
              rv = 1;
          }
          else {
              // Transport company
              rv = o1_departureTransportCompany - o2_departureTransportCompany;
              if (rv == 0) {
                  // Transport type
                  rv = o1_departureTransportType - o2_departureTransportType;
              }
          }
      }
      
      return rv;      
  }
