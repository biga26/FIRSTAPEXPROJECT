public class testMap {
    
    
    public void print() {

        map<String, string> zipCodeMap = new map<string,string>();
        zipCodeMap.put('City', 'Brooklyn');
        zipCodeMap.put('Country', 'USA');
        System.debug(zipCodeMap);

        map<integer, string> m2 = new map<integer, string>();
        m2.put(10,'apple');
        m2.put(21, 'grape');
        System.debug(m2);


        map<string, integer> m3 = new map<string, integer>();
        m3.put('one', 1);
        m3.put('two', 2);
        m3.put('tres', 3);
        System.debug(m3);
        System.debug('keyset: ' +m3.keySet());
        System.debug('values: ' + m3.values());
        System.debug('contains key one?: ' +m3.containsKey('one'));
        System.debug('get key:' +m3.get('one'));
        System.debug('size:' +m3.size());
        System.debug('is Empty: ' +m3.isEmpty());

        Set<string> mapKeys = m3.keySet();
        List<integer> mapValues = m3.values();
        integer sum = 0;
        for(Integer each: mapValues){
            sum += each;
        }
        System.debug('What is this' +mapKeys);
        System.debug('Map values' + mapValues);
        System.debug(sum);

    
    }


    







}