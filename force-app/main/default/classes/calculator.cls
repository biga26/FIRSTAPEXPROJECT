public class calculator {

    //okadym

    public integer a, b;
    public integer result;
    
    
    /* public calc
    Integer a = 5;
    Integer b =10;
    Integer result;
*/
    
    public void add(integer c, integer d){
        result = c+d;
        system.debug('Added value: '+ result);
    }
    public void sub(){
        result = a-b;
        system.debug('Sub value: '+ result);
    }
    public void multiply(){
        result = a*b;
        system.debug('Multiply value: '+ result);
    }
    public void division(){
        result = a/b;
        system.debug('Division value: '+ result);
    }
    public calculator() {
    }


    public Integer dynamicCalculationMethod(integer num1, integer num2, string operation){
        integer result;

        if(operation.equalsIgnoreCase('addition')){
            result = num1 + num2;
        }else if(operation.equalsIgnoreCase('substraction')) {
            result = num1 - num2;
        }else if(operation.equalsIgnoreCase('multiplication')){
            result = num1 * num2;
        }else if(operation.equalsIgnoreCase('division')){
            result = num1 / num2;
        }

        return result;



        
    }



}