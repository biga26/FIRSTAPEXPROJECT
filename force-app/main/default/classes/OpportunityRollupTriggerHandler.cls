public with sharing class OpportunityRollupTriggerHandler {
    
    
    public static void afterInsertRollup(List<Opportunity> oppTriNew){
        Set<ID> accIds = new Set<ID>();
        // Opp or opp in below for loop
        for(Opportunity Opp: oppTriNew){
            if(opp.AccountId != NULL){
                accIds.add(opp.AccountId);
            }
        }
        if(!accIds.isEmpty()){
            updateAccwithRollup(accIds);
        } 

    }


    public static void afterUpdateRollup(List<Opportunity> oppTriNew, Map<ID, Opportunity> oppOldMap){
        Set<ID> accIds = new Set<ID>();
        for(Opportunity Opp: oppTriNew){
            if(opp.AccountId != oppOldMap.get(Opp.id).AccountId){
                accIds.add(opp.AccountId);
            }
        }
        if(!accIds.isEmpty()){
            updateAccwithRollup(accIds);
        }
        

    }



    public static void afterDeleteRollup(List<Opportunity> oppTriOld){
        //FIND the parent Account Ids
        Set<ID> accIds = new Set<ID>();
        for(Opportunity Opp: oppTriOld){
            if(opp.AccountId != NULL){
                accIds.add(opp.AccountId);
            }
        }
        if(!accIds.isEmpty()){
            updateAccwithRollup(accIds);
        }
    
    
    
    
    }



    //correct
    public static void updateAccwithRollup(Set<ID> AccIds){
        //SOQL to fetch the Accont details
        List<Account> accToUpdate = [SELECT ID, Count_of_Opps__c, Sum_of_Amount_Opps__c, (SELECT ID, StageName, Amount, ExpectedRevenue FROM Opportunities) FROM Account WHERE ID IN: accIds];

        for(ACcount acc: accToUpdate){
            //Count of NUmber of related opps
            acc.Count_of_Opps__c = acc.Opportunities.size();

            //sum of the amount of the related Opps
            Decimal sumOfAmount = 0;
            for(Opportunity opp: acc.Opportunities){
                sumOfAmount = sumOfAmount + opp.Amount;
            }
            acc.Sum_of_Amount_Opps__c = sumOfAmount;
        }
        update accToUpdate;

    }














}