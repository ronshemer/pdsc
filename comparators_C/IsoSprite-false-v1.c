/*
 * Based on http://stackoverflow.xluat.com/questions/30824837/using-comparable-to-compare-different-variables
 *
 */
int compare(int o1_minX, int o2_minX,int o1_minY, int o2_minY,int o1_minZ, int o2_minZ ,int o1_maxX, int o2_maxX,int o1_maxY, int o2_maxY,int o1_maxZ, int o2_maxZ){
    if ((o2_maxX > o1_minX) && (o2_maxY > o1_minY) && (o2_minZ < o1_maxZ)){
            return -1;
    }else if((o2_maxX < o1_minX) && (o2_maxY < o1_minY) && (o2_minZ > o1_maxZ)){
            return 1;
    }
    return 0;
  }