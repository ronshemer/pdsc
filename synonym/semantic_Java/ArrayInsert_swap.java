public class IFlow implements Comparator{
  int getH();
  int getLen();
  int get(int pos);
  int set(int pos,int val);
  int shift_array(int i,int j);
//pre condition [o1,0] = [o2,1] & [o2,0] = [o1,1] & [o3,0] = [o3,1]
//post condition compare([o1,0],[o2,0],[o3,0]) = compare([o1,1],[o2,1],[o3,1]) 

  public int compare(IFlow o1, IFlow o2, IFlow o3){
        int len = o3.getLen();
        int h = o1.getH();
        int i=0;

        while((i<len) && (o3.get(i)<h)){
            i=i+1;
        }

	o3.shift_array(i,1);
	len = len+1;
	o3.set(i,h);

        while(i<len){
            i=i+1;
        }
        return i;
   }
}
