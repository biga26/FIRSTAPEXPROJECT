public class AccountRecursiveTriggerHandler {



    public static boolean isTriggerFirstRun = false;

    public static void recursivePractice(List<Account> accTriNew){// to evade endless trigger loop
        isTriggerFirstRun = true;
        List<Account> accList = new List<Account>();
        for(Account acc: accTriNew){
            Account accDup = new Account();
            accDup.Name = 'Recursive Duplicate';
            accList.add(accDup);
        }
        if(!accList.isEmpty()){
            insert accList;
        }
        System.debug('deuplicated');

    }
    
    

}