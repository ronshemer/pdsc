/*
 * Based on http://codedbot.com/questions/5138521/comparison-method-violates-its-general-contract-overlapping-conditions 
 * 
 */

int compare(int o1_score, int o2_score, int o1_seq1start, int o2_seq1start, int o1_seq2start, int o2_seq2start) {
      // first compare scores
      if (o1_score > o2_score) return -1; /* higher score for o1 -> o1 */
      if (o1_score < o2_score) return 1; /* higher score for o2 -> o2 */
      // scores are equal, go on with the position
      if ((o1_seq1start + o1_seq2start) < (o2_seq1start+o2_seq2start)) return -1; /* o1 is farther left */
      if ((o1_seq1start + o1_seq2start) > (o2_seq1start+o2_seq2start)) return 1; /* o2 is farther left */
      // they're equally good
      return 0;
    }