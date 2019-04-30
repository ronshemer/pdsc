/* 
 * Based on http://stackoverflow.com/questions/20970217/why-does-my-comparison-method-violate-its-general-contract
 *
 */
int compare(int o1_departureTime, int o2_departureTime,int o1_departureMaxDuration, int o2_departureMaxDuration,int o1_departureTransportType, int o2_departureTransportType,int o1_departureTransportCompany, int o2_departureTransportCompany) {
      if (o1_departureTime - o2_departureTime < 0)
        return -1;
      else if ((o1_departureTime == o2_departureTime) && 
               (o1_departureMaxDuration == o2_departureMaxDuration) &&
               (o1_departureTransportCompany == o2_departureTransportCompany) &&
               (o1_departureTransportType == o2_departureTransportType))
              return 0;
      else
          return 1;
  }