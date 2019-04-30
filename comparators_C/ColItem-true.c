/*
 * Based on http://stackoverflow.com/questions/11441666/java-error-comparison-method-violates-its-general-contract
 *
 */

int compare (int o1_getCardSet ,int o2_getCardSet, int o1_getCardRarity ,int o2_getCardRarity,int o1_getCardId ,int o2_getCardId,int o1_cardType ,int o2_cardType) {
		 if (o1_getCardSet > o2_getCardSet) {
		     return 1;
		 }
		 if (o1_getCardSet < o2_getCardSet) {
		     return -1;
		 }
		 if (o1_getCardRarity < o2_getCardRarity) {
		     return 1;
		 }
		 if (o1_getCardRarity > o2_getCardRarity) {
		     return -1;
		 }
		 if (o1_getCardId > o2_getCardId) {
		     return 1;
		 }
		 if (o1_getCardId < o2_getCardId) {
		     return -1;
		 }
		 return o1_cardType - o2_cardType;  //watch out for overflow!

	 }