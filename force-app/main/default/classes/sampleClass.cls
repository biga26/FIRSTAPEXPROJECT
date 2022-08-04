public class sampleClass {    

    //okadym


    /*Method to return String*/
    public string getFullName(String firstName,String lastName){
     String fullName = firstName + lastName;
     return fullName;
    }
     /*Method to return Integer*/
     public Integer getSum(Integer a,Integer b,Integer c){
         Integer sum = a + b+ c;
         return sum;
     }
     /*Method to return Boolean*/
     public Boolean getContains(String demoString){
         Boolean checkContainsValue = demoString.contains('testing');
         return checkContainsValue;
     }

     public String getReverse(String inputString){
        String result = inputString.reverse();
        return result;
     }

     public String getReverse(String inputString, String inputString2){
        String result = inputString.reverse() + inputString2.reverse();
        return result;
     }


/* anonymous code
sampleClass demo = new sampleClass();
String FullName = demo.getFullName('Ross','Geller');
system.debug('Full Name :'+FullName);
Integer Sum = demo.getSum(10,20,30);
system.debug('Sum Value :'+Sum);
Boolean validateContains = demo.getContains('I am testing the string');
system.debug('Contains the string? :'+validateContains);

String reverseValue = demo.getReverse('Begench');
system.debug(reverseValue);

*/


 }