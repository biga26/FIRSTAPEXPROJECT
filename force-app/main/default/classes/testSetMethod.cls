public class testSetMethod {
    
    public void print() {

        set<integer> s = new set<Integer>();
        System.debug(s);
        boolean empty = s.isEmpty();
        System.debug(empty);
    }

    public void  print2(){
        set<string> myfruits = new set<String>();
        myfruits.add('apple');
        myfruits.add('grape');

        set<string> fruitBasket = new set<String>();
        fruitBasket.add('apple');
        fruitBasket.add('grape');
        fruitBasket.add('orange');

        boolean checkFruits = fruitBasket.containsAll(myfruits);
        System.debug(checkFruits);

        integer size = myfruits.size();
        System.debug(size);

        myfruits.clear();
        System.debug(myfruits);
    }

    public static void checkOdd(set<Integer> sInt){
        for(integer each: sInt){
            System.debug(each);
        }

    }
    /*
set <Integer> intList = new set<Integer>{1,2,3,4,5,6,7,8};
testSetMethod.checkOdd(intList);
    */






}