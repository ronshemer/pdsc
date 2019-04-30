public class SquaresSum implements Comparator<SquaresSum>{
int in();

public int compare(SquaresSum o1, SquaresSum o2){
        assume (o2.in() > o1.in());
        assume (o1.in() > 0);
	int a=o1.in();
        int c=0;
    while(a<o2.in()){
        c += a*a;
        a++;
    }
    return c;
   }
}

