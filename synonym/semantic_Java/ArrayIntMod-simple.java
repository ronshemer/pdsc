public class AInt implements Comparator<AInt>{
   int length;
   int get(int pos);
//precondition [o1,0] = [o2,1] & [o2,0] = [o1,1]
//postcondition (comparator antisymmetry): sign(compare([o1,0],[o2,0])) = sign(compare([o1,1],[o2,1]))

public int compare(AInt o1, AInt o2){
     if(o1.length != o2.length){
        return 0;
     }
     boolean flag1 = (o1.get(0)>0);
     int i, aentry, bentry,last1,last2;
     i = 0;

     while ((i < o1.length) && (i<o2.length)) {
       aentry = o1.get(i);
       bentry = o2.get(i);
       if (aentry < bentry) {
           return -1;
       }
       if (aentry > bentry) {
           return 1;
       }
       i++;

     if(flag1 && ((i < o1.length) && (i < o2.length))){
          aentry = o1.get(i);
          bentry = o2.get(i);
          if (aentry < bentry) {
           return -1;
            }
            if (aentry > bentry) {
           return 1;
            }
          i++;
       }

     }
     return 0;
   }
}

//composition- (assuming large step)
//todo
