public class listSetMapDemo {
    

    //okadym



    public void demoList(){

        List<Integer> countOfTen = new List<Integer>();
        countOfTen.add(10);
        countOfTen.add(20);
        countOfTen.add(30);
        countOfTen.add(40);
        countOfTen.add(50);
        system.debug('List: ' + countOfTen);
        system.debug('Index 3 is ' + countOfTen.get(3));
        system.debug(countOfTen.size());   
    }

    public void demoSet(){
        set<String> avengerSet = new set<String>();
        avengerSet.add('Iron Man');
        avengerSet.add('Spider Man');
        avengerSet.add('Captain America');
        avengerSet.add('Hulk');
        system.debug('Set: ' + avengerSet);
        system.debug('Size is ' + avengerSet.size());
    }

    public void mapWithList(){
        Map<String,List<String>> M1 = new Map<String,List<String>>();
        List<String> s1= new List<String>{'Hello','Hi'};
        M1.Put('Greeting',s1);
        system.debug('Debug of M1 is'+M1);
    }

    public void demoMaps(){
        Map<String, String> fruitsMap = new Map<String, String>();
        fruitsMap.put('First', 'Apple');
        fruitsMap.put('Second', 'Orange');
        fruitsMap.put('Third', 'Grape');
        system.debug('Map: ' + fruitsMap);
        system.debug('Value of second: ' + fruitsMap.get('Second'));
        system.debug('Keys: ' + fruitsMap.keySet());
        system.debug('FruitsMap Values : '+fruitsMap.values());   
    }

    public void employeeInfo(){
        Map<Integer, String> employeeMap = new Map<Integer, String>();
        employeeMap.put(001, 'Madhu');
        system.debug('Employees: ' + employeeMap);
    }
    


    
}