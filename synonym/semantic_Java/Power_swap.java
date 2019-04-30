public class IFlow implements Comparator{
  boolean getH();
  int getL();

  public int compare(IFlow o1, IFlow o2, IFlow o3){
        assume (o3.getL() > 0);
        int x = o3.getL();
        boolean h = o1.getH();
        int y = 0;
        int z = x;
        if(!h){
            z+=x;
        }
        while(z>0){
            y+=x;
            z=z-1;
        }
        if(h){
            y=y*2;
        }
        return y;
   }
}

/*
root@9f8ec53dad60:/synonym# synonym -p=13 -m=descartes 2x2.java
generalizeCond _ , fnNames length: 0
generalizeCond _ , fnNames length: 0
generalizeCond _ , fnNames length: 0
generalizeCond _ , fnNames length: 0
synonym: none of the invariants was able to prove the property.
CallStack (from HasCallStack):
  error, called at src/Analysis/Consolidation.hs:212:28 in main:Analysis.Consolidation

root@9f8ec53dad60:/synonym# synonym -p=13 -m=syn 2x2.java
synonym: Fusion failed
CallStack (from HasCallStack):
  error, called at src/Analysis/LockstepAS.hs:230:9 in main:Analysis.LockstepAS

root@9f8ec53dad60:/synonym# synonym -p=13 -m=synonym 2x2.java
synonym: Fusion failed
CallStack (from HasCallStack):
  error, called at src/Analysis/SBP.hs:243:9 in main:Analysis.SBP

*/