public class AccountInfoSOQL {
    
    
    public static void showAccounts() {

        List<Account> accToOppList = [SELECT Id, Name, (SELECT Name, CloseDate FROM Opportunities WHERE (CloseDate > Today AND CloseDate != Null )) FROM Account];
        system.debug(accToOppList);
        system.debug('======================================');
        for(Account acc: accToOppList){
            system.debug(acc.Name);
            for(Opportunity opp: acc.Opportunities){
                system.debug('Opp:' + opp.Name);
                system.debug('Opp closed date: ' + opp.CloseDate);
            }
        }

    



    }
}