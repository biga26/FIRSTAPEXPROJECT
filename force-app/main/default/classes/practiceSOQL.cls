public class practiceSOQL {
    
    
    public static void fetchOpps(String oppStageName, String leadSrc) {
        List<Opportunity> oppsList = [SELECT Name, Amount FROM Opportunity WHERE StageName =: oppStageName AND LeadSource =: leadSrc];
        system.debug('Opportunity test' + oppsList);

    }



    public static void printAccswithOpps(){
        List<Account> accWithOppsList = [SELECT Name, AnnualRevenue, (SELECT Name, Amount FROM Opportunities WHERE StageName = 'Closed Won') FROM Account WHERE type = 'Customer - Direct' AND AnnualRevenue != NULL];
        for(Account acc: accWithOppsList){
            system.debug('Acciunt Name: ' +acc.Name+ ' and its Annual Revenue is: ' + acc.AnnualRevenue);
            for(Opportunity opp: acc.Opportunities){
                System.debug('Oppotunity Name and Amount' + opp.Name+ ' ' +opp.Amount);
            }
        }
        System.debug('asdasd');
    }



    






}