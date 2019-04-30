public class Loops{
//[x,0]- variable x in copy 0

//pre condition [max,0] = [max,1]
//post condition compute([h,0],[max,0]) = compute([h,1],[max,1]) which is equivalent to [y,0] = [y,1] at exit

public int compute(int h, int max){
        assume (max > h);
        assume (h > 0);
        int y = 1;
        int i=0;
        int v=0;
        int pc= (h<=i? 1 : 0);

        while(h>i){
            y=y+y;
            i=i+1;
            if (h<=i){
                pc=1;
            }
        }
        v=1;
        pc=(max<=i? 3 : 2);
        while(max>i){
            y=y+y;
            i=i+1;
            if (max<=i){
                pc=3;
            }
        }
        return y;
   }
}

//composition-
// [pc,0]=1 & ([pc,1]=0 || [pc,1]=2) -> run copy 0
// [pc,1]=1 & ([pc,0]=0 || [pc,0]=2) -> run copy 1
// else -> run both copies (2)

//this composition implies [y,0] = [y,1] (and [i,0] = [i,1]) at every state (and prove the property)
//note: self-loop in return state is assumed, otherwise the composition is more complicated

/*
predicates (invariant and composition language)
pc0=0, pc1=0
pc0=1, pc1=1
pc0=2, pc1=2
pc0=3, pc1=3
y0=y1
i0=i1
max0=max1
i0=max0
i1=max1
*/