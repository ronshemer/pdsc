public class AInt implements Comparator<AInt>{
   int length;
   int get(int pos);
//precondition [o1,0] = [o2,1] & [o2,0] = [o1,1]
//postcondition (comparator antisymmetry): sign(compare([o1,0],[o2,0])) = sign(compare([o1,1],[o2,1]))

public int compare(AInt o1, AInt o2){
     if(o1.length != o2.length){
        return 0;
     }
     // same length
     int len = o1.length;
     boolean flag1 = o1.get(len-1)>0;
     boolean flag2 = false;
     int i, aentry, bentry,last1,last2;
     i = 0;

     while (i < len) {
       aentry = o1.get(i);
       bentry = o2.get(i);
       if (aentry != bentry) {
           flag2 = true;
           last1 = aentry;
           last2 = bentry;
       }
       i++;

     if(flag1 && (i<len)){
        aentry = o1.get(i);
        bentry = o2.get(i);
        if (!flag2 && (aentry != bentry)) {
           flag2 = true;
           last1 = aentry;
           last2 = bentry;
        }
        i++;
       }

     }

     if(!flag2){
        return 0;
     }
     return last1 - last2;
   }
}

//composition- (assuming large step)
// [o1.length,0] != [o2.length,1] -> run both copies (2)
// [flag1,0] = [flag1,1] -> run both copies (2)
// [i,0] = [i,1] & [i,0]<[len,0] & [o1,0][[i,0]] != [o2,0][[i,0]] -> run both copies (2)
// [i,0] = [i,1]+1 & [i,0]<[len,0] -> run copy 1 (1)
// [i,1] = [i,0]+1 & [i,0]<[len,0] -> run copy 0 (0)
// [i,0] = [i,1] & [i,0]<[len,0] & [o1,0][[i,0]] = [o2,0][[i,0]] & [o1,0][[i,0]+1] != [o2,0][[i,0]+1] & [flag1,0] & ![flag1,1] -> run copy 1 (1)
// [i,0] = [i,1] & [i,0]<[len,0] & [o1,0][[i,0]] = [o2,0][[i,0]] & [o1,0][[i,0]+1] != [o2,0][[i,0]+1] & [flag1,1] & ![flag1,0] -> run copy 0 (0)

//with this composition it holds that [last1,0]=[last2,1] & [last2,0]=[last1,1]
