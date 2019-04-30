public class DoubleSquare{

//pre condition [low,0] = [low,1] & [low,0]>0
//post condition compute([low,0],[h,0]) = compute([low,1],[h,1]) which is equivalent to [y,0] = [y,1] at exit

public int compute(int low,boolean h){
        assume (low > 0);
	int pc = 0;
        int y = 0;
        int z = low;
        if(!h){
            z+=low;
        }
	pc = 1;
        while(z>0){
	    pc = 2;
            y+=low;
            z=z-1;
        }
	pc = 3;
        if(h){
            y=y*2;
        }
        return y; //y = 2*(low^2)
   }
}

//composition-
//	([h,0] = [h,1]) -> run both copies (return 2)
//	!([h,0] = [h,1]) & ([pc,0]<=1 & [pc,1]<=1) | ([pc,0]=3 & [pc,1]=3) -> run both copies (return 2)
//	[h,0] & ![h,1] & ([pc,0]=2 & [pc,1]=2) & ([z,0] = 2*[z,1]) & [z,0]!=0 -> run copy 0 (return 0)
//	[h,0] & ![h,1] & ([pc,0]=2 & [pc,1]=2) & (([z,0] != 2*[z,1]) | ([z,0]=0 & [z,1]=0)) -> run both copies (return 2)
//	![h,0] & [h,1] & ([pc,0]=2 & [pc,1]=2) & ([z,1] = 2*[z,0]) & [z,0]!=0 -> run copy 1 (return 1)
//	![h,0] & [h,1] & ([pc,0]=2 & [pc,1]=2) & (([z,1] != 2*[z,0]) | ([z,0]=1 & [z,1]=0)) -> run both copies (return 2)

//note: the idea behind the composition is that if [h,0] and not [h,1] then when ([z,0] = 2*[z,1]) only copy 0 runs, otherwise both run. 
//this allows [y,0] = 2*[y,1] or [y,0] = 2*[y,1]-[low,0] for all states in the loop.
//the other case of [h,1] and not [h,0] is dual

//alternative composition
// if (([z,0]>0 & [z,1]>0) | ([z,0]<=0 & [z,1]<=0)) {
// 	if([h,0] = [h,1] | ([z,0]=0 & [z,1]=0)){
//		run both copies (return 2)
//	} 
//	else {
//		if([h,0]){
//			if([z,0] = 2*[z,1]){
//				run copy 0 (return 0)
//			}
//			else{
//				run both copies (return 2)
//			}
//		}
//		else{
//			if([z,1] = 2*[z,0]){
//				run copy 1 (return 1)
//			}
//			else{
//				run both copies (return 2)
//			}
//		}
//	}
// }
// else{
//	if([z,1]<=0 & [z,0]>0){
//		run copy 0 (return 0)
//	}
//	else {
//		run copy 1 (return 1)
//	}
// }
