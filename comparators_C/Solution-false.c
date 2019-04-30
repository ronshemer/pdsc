/*
 * Based on http://codedbot.com/questions/402185/java-comparator-violates-general-contract 
 * 
 */
int compare(int o1_getValue,int o1_solutionCost, int o2_getValue,int o2_solutionCost, int nondet[]) {
        int v1 = o1_getValue;
        int v2 = o2_getValue;
        if ((v1 == -1) && (v2 == -1))
            return 0;
        else if (v1 == -1)
            return 1;
        else if (v2 == -1)
            return -1;
        else if (v1 == v2){
            //return (int)Math.signum(solutionCost(o1) - solutionCost(o2));
            int comp = o1_solutionCost - o2_solutionCost;
            if (comp > 0)
              return 1;
            else if (comp < 0)
              return -1;
            else 
              return 0;
        }
        else {
            //return (int)Math.signum(Math.abs(target-v1) - Math.abs(target-v2));
            int target = nondet[0];
            int comp1 = target-v1;
            int abscomp1 = 0;
            if (comp1 >= 0) 
              abscomp1 = comp1;
            else
              abscomp1 = -comp1;

            int comp2 = target-v2;
            int abscomp2 = 0;
            if (comp2 >= 0) 
              abscomp2 = comp2;
            else
              abscomp2 = -comp2;
            
            int comp3 = abscomp1 - abscomp2;
            if (comp3 > 0)
              return 1;
            else if (comp3 < 0)
              return -1;
            else
              return 0; 
        }
    }
