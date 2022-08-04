public with sharing class exceptionHandlingDemo {
    
    
    public static void exceptionHandlingDemoMethod() {
        Account acc = new Account();
        try{
            insert acc;
        }
        catch(DmlException e){
            System.debug('exception: ' +e);
        }
        finally{
            //logic here - send email
            System.debug('Finally block code');
        }
    }


    public static void databaseMethodsDemo(){
        
        List<Account> accList = new List<Account>();
        
        Account acc1 = new Account();
        acc1.Name = 'FirstAccount';
        accList.add(acc1);
        
        Account acc2 = new Account();
        
        accList.add(acc2);

        //Database insert - all or nothing
        List<Database.SaveResult> resultAcc = DataBase.insert(accList, false);
        for(Database.SaveResult result: resultAcc){
            if(result.isSuccess()){
                // logic - create contact/opp
                System.debug('i am successful');
            }else {
                system.System.debug('Sorry I failed' + result.getErrors());  
            }

        }
    }




}