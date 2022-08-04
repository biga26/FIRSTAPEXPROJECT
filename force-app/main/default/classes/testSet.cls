public class testSet {
    
    public void printSet() {

        set<String> fruits = new set<String>();
        fruits.add('apple');
        fruits.add('pineapple');
        fruits.add('Pineappl');
        fruits.add('grape');
        fruits.add('grapE');
        System.debug(fruits);
    }

    public void printSet2(){
        list<String> shoppingList = new list<String>();
        shoppingList.add('hi');
        shoppingList.add('appl');
        shoppingList.add('buu');
        System.debug('shopping liist: ' +shoppingList);
        
        set<string> shopNow = new set<string>();
        shopNow.addAll(shoppingList);
        System.debug('shop Now: ' +shopNow);
    }

    public void printSet3(){
        set<Integer> integerList = new set<Integer>{1,2,3,4,5,6,7,8,9,10};
        integerList.add(5);
        System.debug(integerList);
        for(integer each: integerList){
            System.debug(each);
        }
    }
    /*
testSet demo = new testSet();
demo.printSet3();
    */
    










}