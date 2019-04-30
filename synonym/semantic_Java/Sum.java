public class Loops{
//[x,0]- variable x in copy 0

//pre condition [max,0] = [max,1]
//post condition compute([h,0],[max,0]) = compute([h,1],[max,1]) which is equivalent to [y,0] = [y,1] at exit

public int compute(int h, int max){
        assume (max > h);
        assume (h > 0);
        int y = 1;
        int i=0;
        int pc=0;

        while(h>i){
            y=y+y;
            i=i+1;
        }
        pc=1;
        while(max>i){
            y=y+y;
            i=i+1;
        }
        return y;
   }
}

//composition-
// [i,0]<[h,0] & [i,1]<[h,1]-> run both copies (2)
// [i,0]<[h,0] & [i,1]>[h,1] & [pc,1] = 0 -> run copy 1 (1)
// [i,0]>[h,0] & [i,1]<[h,1] & [pc,0] = 0 -> run copy 0 (0)
// else-> run both copies (2)

//this composition allows [y,0] = [y,1] to hold at every state (and prove the property)
//note: self-loop in return state is assumed, otherwise the composition is more complicated
