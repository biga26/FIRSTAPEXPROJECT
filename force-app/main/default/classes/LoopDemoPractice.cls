public class LoopDemoPractice {
    

    //okadym

	public integer sumOfInteger(List<Integer> inputList){
        Integer sum = 0;
        if(!inputList.isEmpty()){
            for(Integer i=0 ; i<inputList.size() ; i++){
                sum = sum + inputList.get(i);
                //0+10 = 10
                //10+20 = 30
                //30+30 = 60
            }             
        }
        return sum;
    }
    
    public void reverseListValues(){
        List<Integer> numberList = new List<Integer>();
        numberList.add(10);
        numberList.add(20);
        numberList.add(30);
        numberList.add(40);
        numberList.add(50);
        system.debug(numberList);
        
        List<Integer> reverseNumberList = new List<Integer>();
        
        for(Integer i=numberList.size()-1; i>=0; i--){
            Integer value = numberList.get(i);
            reverseNumberList.add(value);
        }
        system.debug(reverseNumberList);
    }
    

    
    
//LoopDemoPractice demo = new LoopDemoPractice();
//List<Integer> inputList = new List<Integer>{10,20,30};
//Integer sum = demo.sumOfInteger(inputList);
//system.debug('Sum: '+sum);
    

}