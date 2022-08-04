public  class EmployeeInfo {

    //okadym

    public String showInfo (Integer empID){
        Map<Integer, String> employeeMap = new Map<Integer, String>();
        employeeMap.put(001, 'Madhu');
        employeeMap.put(002, 'Sri');
        system.debug('map is: ' + employeeMap);
        String empName = employeeMap.get(empID);
        return empName;
    }
/*    EmployeeInfo demo = new EmployeeInfo();
String empName = demo.showInfo(001);
system.debug('Value ' + empName);
 */       

    public void demoIf(){
        String value = 'Wake up';
        if(value.length() > 0){
            system.debug('Valid String');
        }else {
            system.debug('Empty String');
        }
    }
    /*
    EmployeeInfo demo = new EmployeeInfo();
demo.demoIf();
    */

    
}