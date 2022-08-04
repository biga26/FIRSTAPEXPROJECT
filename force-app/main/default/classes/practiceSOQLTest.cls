@isTest
public class practiceSOQLTest {
    
        
    
    
    /*
    @isTest
    public static void fetchOppsTest(){
        
        
        //call the method
        practiceSOQL.fetchOpps('Qualification', 'Partner Referral');
        List<Opportunity> oppListSOQL = [SELECT StageName, LeadSource FROM Opportunity];
        
        //validation
        system.assertEquals('Qualification', oppListSOQL.get(0).Stagename);
        
        
    }
    */
    
    /*
    @isTest
    public static void printAccswithOppsTest (){
        practiceSOQL.printAccswithOpps();
        List<Account> accList = [SELECT Name, AnnualRevenue, (SELECT Name, Amount FROM Opportunities) FROM Account];
        system.assert(!accList.isEmpty());
        }
       
        
    }
    */







    /*
    @testSetup
    public static void testDataSetup(){
        // 3 accounts
        //  300 opportunity
        List<Account> accList = new List<Account>();
        Account acc1 = new Account();
        acc1.Name = 'FirstAccount';
        acc1.Type = 'Customer - Direct';
        acc1.AnnualRevenue = 1000;
        accList.add(acc1);
        
        Account acc2 = new Account();
        acc2.Name = 'SecondAccount';
        acc2.Type = 'Customer - Direct';
        acc2.AnnualRevenue = 1000;
        accList.add(acc2);
        
        Account acc3 = new Account();
        acc3.Name = 'ThirdAccount';
        acc3.Type = 'Customer - Direct';
        acc3.AnnualRevenue = 1000;
        accList.add(acc3);
        
        insert accList;
        
        List<Opportunity> oppList = new List<Opportunity>();
        for(Integer i=1; i<=300; i++){
            Opportunity opp = new Opportunity();
            opp.Name = 'Opp' + i;
            opp.StageName = 'Closed Won';
            opp.CloseDate = Date.today() + 10;
            if(i < 100){
                opp.AccountId = accList.get(0).id;
                opp.LeadSource = 'Partner Referral'
            }else if( i<200){
                opp.AccountId = accList.get(1).id;
            }else if(i<300){
                opp.AccountId = accList.get(2).id;
            }
            oppList.add(opp);
        }
        insert oppList;
    }
    
    */
    
    
    

}