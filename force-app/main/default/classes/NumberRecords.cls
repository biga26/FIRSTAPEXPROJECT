public class NumberRecords {

    //okadym
    
    public void validateNumbers(Integer inputNum) {
        List<Integer> numberList = new List<Integer>();
        numberList.add(10);
        numberList.add(38);
        numberList.add(88);
        numberList.add(21);
        numberList.add(58);

        if(numberList.contains(inputNum)){
            system.debug('Number exists');
        }else{
            system.debug('Number does not exists');
        }


    }


    
    public void compareSets(Set<Integer> inputSet){
        Set<Integer> values = new Set<Integer>();
        values.add(111);
        values.add(222);
        values.add(333);
        if(values.equals(inputSet)){
            system.debug('Both sets are identical');
        }else{
            system.debug('Both sets are not identical');
        }


    }
/*
NumberRecords demo = new NumberRecords();
demo.validateNumbers(29);

Set<Integer> inputSet = new Set<Integer>();
inputSet.add(111);
inputSet.add(222);
inputSet.add(313);
demo.compareSets(inputSet);


*/



}