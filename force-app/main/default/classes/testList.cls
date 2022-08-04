public class testList {
    
    
    public void printShoppingList() {

        list<String> shoppingList = new list<string>();
        shoppingList.add('apple');
        shoppingList.add('pineapple');
        shoppingList.add('clothes');
        System.debug(shoppingList);

        string item2 = shoppingList.get(1);
        System.debug('Item 2 is: ' +item2);
    }


    public void printDateList(){
        list<date> birthDateList = new list<date>();
        date dt1 = date.newInstance(1990,10,9);
        date dt2 = date.newInstance(2020,1,1);
        birthDateList.add(dt1);
        birthDateList.add(dt2);
        System.debug(birthDateList);
        System.debug(birthDateList.get(1));
    }

    public void printInteger(){
        list<Integer> numList = new list<Integer>{1,2,3,4,5};
        System.debug(numList);
    }

    /*
testList demo = new testList();
demo.printShoppingList();
demo.printDateList();
demo.printInteger();
    */

    public static list<String> toCaps(list<String> lst){
        list<string> retList = new list<String>();
        for(String each: lst){
            System.debug(each);
            string caps = each.capitalize();
            retList.add(caps);
        }
        return retList;


    }
    /*
list<String> l = new list<String>();
l.add('hi');
l.add('hello');
list<String> l2 = testList.toCaps(l);
system.debug(l2);
    */

    public static void printAge(list<date> dts){
        date todayDate = date.today();
        for(date each: dts){
            System.debug(each);
            integer days = each.daysBetween(todayDate);
            Integer age = integer.valueOf(days/365);
            System.debug('age = ' +age);
        }
    }
    /*
list<date> birthDateList = new list<date>();
date d1 = date.newInstance(1990,1,1);
birthDateList.add(d1);
date d2 = date.newInstance(2005,1,1);
birthDateList.add(d2);
    */





}