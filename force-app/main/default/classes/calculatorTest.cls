// Annotation - it modifies the way a class/method should behave


@isTest

public class calculatorTest {    


    @isTest
    public static void calculatorTest(){

        calculator calc = new calculator();
        calc.add(10,20);
        //Assertions - to validate the result (True/False) (Expected/ Actual)
        system.assertEquals(30, calc.result); // checks if the result is 50
        
        calc.a = 10;
        calc.b = 20;
        calc.sub();
        system.assertEquals(-10, calc.result);//
        
        calc.multiply();
        system.assertEquals(200, calc.result);
        
        calc.division();
        system.assertEquals(0, calc.result);
        
        
    }
    
    
    @isTest
    public static void dynamicCalculationMethodTest(){
        calculator calc = new calculator();
        Integer resultValue; 
        resultValue = calc.dynamicCalculationMethod(40, 40, 'addition');
        system.assertEquals(80, resultValue);
        
        resultValue = calc.dynamicCalculationMethod(40, 30, 'substraction');
        system.assertEquals(10, resultValue);
        
        resultValue = calc.dynamicCalculationMethod(40, 3, 'multiplication');
        system.assertEquals(120, resultValue);
        
        resultValue = calc.dynamicCalculationMethod(40, 4, 'division');
        system.assertEquals(10, resultValue);
    }
    
    
    

}