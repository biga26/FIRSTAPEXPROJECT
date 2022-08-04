@isTest
public class practiceDMLTest {
    
    @isTest
    public static void updateOppsTest(){
        //test setup / test data creation
        List<Opportunity> oppList = new List<Opportunity>();
        for(Integer i=1; i<=10; i++){
            Opportunity opp = new Opportunity();
            opp.Name = 'Opp'+i;
            opp.StageName = 'Prospecting';
            opp.CloseDate = Date.today() + 10;
            opp.Description = 'Test Desc';
            oppList.add(opp);

        }
        insert oppList;
        
        //call method for testing
        practiceDML demo = new practiceDML();
        demo.updateOpps();
        //Validation
        List<Opportunity> oppListUpdate = [SELECT Description FROM Opportunity];
        system.assert(oppListUpdate.size() == 10);    
        system.assertEquals('TThis is one of the top 10 opportunity. Please work on this as priority', oppListUpdate.get(3).Description);
        
    }
    
    
    
    @isTest
    public static void createTaskForCaseTest(){
        // test Data setup
        Case cs = new Case();
        cs.Origin = 'Email';
        cs.Status = 'New';
        insert cs;
        
        // call this method for testing
        practiceDML demo = new practiceDML();
        demo.createTaskForCase();
        
        // Validation
        List<Case> caseList = [SELECT Status, (SELECT Subject, Priority, Status, WhatId, ActivityDate FROM Tasks) FROM Case];
        
        system.assert(caseList.get(0).Tasks.size() > 1);
        system.assertEquals(cs.Id, caseList.get(0).Tasks.get(0).WhatId);
                
    }

}