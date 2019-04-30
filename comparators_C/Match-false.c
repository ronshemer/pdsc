/*
 * Based on http://codedbot.com/questions/5138521/comparison-method-violates-its-general-contract-overlapping-conditions 
 * 
 */

int compare(int o1_score, int o2_score, int o1_seq1start, int o2_seq1start, int o1_seq2start, int o2_seq2start) {
    if(o1_score > o2_score)
      return -1;
    if((o1_score == o2_score) && ((o1_seq1start < o2_seq1start) && (o1_seq2start < o2_seq2start)))
        return -1;
    if((o1_score == o2_score) && !((o1_seq1start < o2_seq1start) && (o1_seq2start < o2_seq2start)))
        return 0;
    return 1;
    }