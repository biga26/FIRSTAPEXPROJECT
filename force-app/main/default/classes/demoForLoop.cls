public class demoForLoop {
    

    //okadym

    public void demoInitialization(){
        for(Integer i=0; i<10; i++){
            system.debug('Print i: ' + i);
        }
    }
    
    public void printOddNumbers(Integer startValue, integer endValue){
        //math.mod(10, 4);
        
        for(Integer i=startValue; i<=endValue; i++){
            Integer modValue = math.mod(i, 2);
            if(modValue == 1){
                system.debug('print odd: ' + i);
            }
        }
        
    }
    
    public void printMultiplicationTable(Integer num){
        for(Integer i=1; i<=9; i++){
            system.debug('multiply' + num * i);
        }
    }
    
    public void demoIterateList(){
        List<String> namesList = new List<String>();
        namesList.add('Busra');
        namesList.add('Yusuf');
        namesList.add('Sara');
        namesList.add('Numan');
        system.debug('Print List: ' + namesList);
        
        for(String nameValue: namesList){
            system.debug('Values inside the list: ' + nameValue);
        }
    }
    
    public void demoIterateSet(){
        Set<String> fruitSet1 = new Set<String>();
        fruitSet1.add('apple');
        fruitSet1.add('orange');
        fruitSet1.add('kiwi');
        
        for(String fruitName: fruitSet1){
            system.debug('Each fruit: ' + fruitName);
        }
        
        Set<String> fruitSet2 = new Set<String>();
        for(string fruitName : fruitSet1){
            System.debug('Fruit name: ' + fruitName);
            String newFruitName = fruitName.capitalize();
            fruitSet2.add(newFruitname);
        }
        system.debug(fruitSet2);
    }
    
    public void demoIterateMap(){
		Map<Integer, String> employeeMap = new Map<Integer, String>();
        employeeMap.put(001, 'Madhu');
        employeeMap.put(002, 'Sri');
       	employeeMap.put(003, 'Mer');
        employeeMap.put(004, 'Sunny');
        
        set<Integer> keysOfMap = new set<Integer>();
        keysOfMap = employeeMap.keySet();
        
        for(integer empKey: keysOfMap){
            String empName = employeeMap.get(empKey);
            system.debug('name: ' + empname +' key:'+empKey);
        }
        
    }
    
 
    
//demoForLoop demo = new demoForLoop();
//demo.demoInitialization();
//demo.printOddNumbers(1,10);
//demo.printMultiplicationTable(2);
//demo.demoIterateList();
//demo.demoIterateSet();
//demo.demoIterateMap();
 
    

}