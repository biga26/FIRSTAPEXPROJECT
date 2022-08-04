public class practiceLoopsCollections {

    //okadym
    
    public void findLargestinList (list<double> myList){
        double max = 0;
        for(double eachNum: myList){
            if (eachNum > max){
                max=eachNum;
            }
        }
    system.debug('Largest is ' + max);
    }

//    practiceLoopsCollections demo = new practiceLoopsCollections();
//    List<Double> nums = new list<double>{10,50,-5,65};
//    demo.findLargestinList(nums);


    public static void findValuesInMap(){
        Map<String, Decimal> currISOCodeAndExchangeRateMap = new Map<String, Decimal>();
        currISOCodeAndExchangeRateMap.put('AUD', 0.73);
        currISOCodeAndExchangeRateMap.put('CAD', 0.78);
        currISOCodeAndExchangeRateMap.put('EUR', 1.13);
        currISOCodeAndExchangeRateMap.put('NZD', 0.68);
        
        currISOCodeAndExchangeRateMap.put('INR', 0.013);

        Boolean isContainsSAD = currISOCodeAndExchangeRateMap.containsKey('SAD');
        system.debug('Does it contain SAD' + isContainsSAD);
        
        Set<String> moreThanOneISOCode = new Set<String>();
        Set<String> lessThanOneISOCode = new Set<String>();

        for(String isoCode: currISOCodeAndExchangeRateMap.keyset()){
            if(currISOCodeAndExchangeRateMap.get(IsoCode) >= 1){
                moreThanOneISOCode.add(isoCode);
            }else{
                lessThanOneISOCode.add(isoCode);
            }
        }
        system.debug('More than one Dollar ISO Code ' +moreThanOneISOCode);
        system.debug('Less than one Dollar ISO Code ' +lessThanOneISOCode);
    }
    //practiceLoopsCollections.findValuesInMap();



    //get unique values from List
    public static Set<String> getUniqueValues(List<String> fruitList){
        Set<String> fruitSet = new Set<String>();
        for(String eachFruit: fruitList){
            fruitSet.add(eachFruit);
        }
        return fruitSet;

    }
    /*
List<String> fruitList = new List<String>{'Apple', 'Apple','Orange','Fig','Grage','Apple','Grape','Fig'};
Set<String> fruitSet = practiceLoopsCollections.getUniqueValues(fruitList);

    */
    
        

}