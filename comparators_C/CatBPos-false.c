/* 
 * Based on http://stackoverflow.com/questions/22768302/why-i-get-comparison-method-violates-its-general-contract
 *
 */
int compare(int o1_getHdopBPosGetTime,int o2_getHdopBPosGetTime,int o1_getBPosGetTime,int o2_getBPosGetTime,int o1_getBPosGetStat,int o2_getBPosGetStat,int o1_getBPosIsDeparture,int o2_getBPosIsDeparture,int o1_getBPosIsVacation,int o2_getBPosIsVacation,int o1_getBPosIsArrival,int o2_getBPosIsArrival,int o1_getHdopBPosGetTimeIsNotVoid, int o2_getHdopBPosGetTimeIsNotVoid) {
    int lCompare;

    if (o1_getHdopBPosGetTimeIsNotVoid && o2_getHdopBPosGetTimeIsNotVoid) {
        lCompare = o1_getHdopBPosGetTime-o2_getHdopBPosGetTime;
        if (lCompare != 0) {
            return lCompare;
        }
    }

    lCompare = o1_getBPosGetTime-o2_getBPosGetTime;
    if (lCompare != 0) {
        return lCompare;
    }

    if (o1_getBPosIsDeparture && o2_getBPosIsVacation) {
        return 1;
    } else if (o1_getBPosIsVacation && o2_getBPosIsArrival) {
        return 1;
    }

    // Ankunft und Abfahrt für denselben Bahnhof sollen in der richtigen Reihenfolge sein
    if (o1_getBPosIsDeparture && o2_getBPosIsArrival && (o1_getBPosGetStat == o2_getBPosGetStat)) {
        return 1;
    }

    return 0;
  }
