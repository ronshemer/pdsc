/*
 * Based on http://stackoverflow.com/questions/10234038/compare-method-throw-exception-comparison-method-violates-its-general-contract
 *
 */

   int compare (int o1_ora, int o2_ora, int o1_volume_totale, int o2_volume_totale) {
      int cmp = o1_ora - o2_ora;
      if (cmp == 0){
        cmp = o1_volume_totale - o2_volume_totale;
      }
      return cmp;
	 }