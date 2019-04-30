public class IFlow implements Comparator{
  int getH();
  int getMax();
//[x,0]- x in copy 0

//pre condition [o1,0] = [o2,1] & [o2,0] = [o1,1] & [o3,0] = [o3,1]
//post condition compare([o1,0],[o2,0],[o3,0]) = compare([o1,1],[o2,1],[o3,1]) equivalent to [y,0] = [y,1] at exit

//composition-
// [i,0]<[h,0] & [i,1]<[h,1]-> run both copies (2)
// [i,0]<[h,0] & [i,1]>[h,1] & [pc,1] = 0 -> run copy 1 (1)
// [i,0]>[h,0] & [i,1]<[h,1] & [pc,0] = 0 -> run copy 0 (0)
// else-> run both copies (2)

//this composition allows [y,0] = [y,1] to hold at every state and prove the property

//note: running both copies relies on self-loop in return state, otherwise the composition is more complicated
  public int compare(IFlow o1, IFlow o2, IFlow o3){
        assume (o3.getMax() > o1.getH());
        assume (o1.getH() > 0);
        int max = o3.getMax();
        int h = o1.getH();
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

/*
root@9f8ec53dad60:/synonym# synonym -p=13 -m=descartes 2loops.java
generalizeCond _ , fnNames length: 0
generalizeCond _ , fnNames length: 0
generalizeCond _ , fnNames length: 0
generalizeCond _ , fnNames length: 0
synonym: none of the invariants was able to prove the property.
CallStack (from HasCallStack):
  error, called at src/Analysis/Consolidation.hs:212:28 in main:Analysis.Consolidation

root@9f8ec53dad60:/synonym# synonym -p=13 -m=syn 2loops.java
synonym: Fusion failed
CallStack (from HasCallStack):
  error, called at src/Analysis/LockstepAS.hs:230:9 in main:Analysis.LockstepAS

root@9f8ec53dad60:/synonym# synonym -p=13 -m=synonym 2loops.java
synonym: Fusion failed
CallStack (from HasCallStack):
  error, called at src/Analysis/SBP.hs:243:9 in main:Analysis.SBP

*/
