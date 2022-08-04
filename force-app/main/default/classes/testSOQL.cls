public  class testSOQL {
    
    
    public void print1() {

        List<Opportunity> oppList = [SELECT ID, Name, Amount FROM Opportunity WHERE Amount > 100000 ORDER BY Amount ASC LIMIT 1];
        Integer total = 0;
        for(Opportunity each: oppList){
            System.debug(each);
            total = total + 1;
        }
        System.debug(total);

        Opportunity highest = [SELECT ID,Name, Amount, TrackingNumber__c, StageName FROM Opportunity ORDER BY Amount DESC LIMIT 1];
        System.debug('highest ' + highest);
        
        decimal highestAmount = highest.Amount;
        System.debug(highestAmount);

        string trackNumber = highest.TrackingNumber__c;
        System.debug('track string ' +trackNumber);

        string stgName = highest.StageName;
        System.debug('stageName: ' +stgName);
    }

    public void print2(){
        List<Opportunity> oppList = [SELECT ID, Name, Amount FROM Opportunity WHERE Amount > 500000 ORDER BY Amount DESC];
        Map<String, decimal> mapList = new map<String, decimal>(); 
        List<decimal> amounts = new List<decimal>();
        for(Opportunity each: oppList){
            Decimal oppAmount = each.Amount;
            System.debug(oppAmount);
            amounts.add(oppAmount);

        }
        System.debug(amounts);
    }

    //child includes parent
    public void print3(){
        List<Salesforce_Ticket__c> tickList = [SELECT ID,Name,Priority__c, Requester__r.Name, Salesforce_Project__r.Name, Status__c, Salesforce_Project__r.Status__c  FROM Salesforce_Ticket__c WHERE Salesforce_Project__r.Status__c ='Completed' OR Salesforce_Project__r.Status__c = 'In-Progress'];
        for(Salesforce_Ticket__c each: tickList){
            if(each.Salesforce_Project__r.Status__c == 'In-progress'){
                System.debug('not done');
            }else {
                System.debug('done: '+each.Salesforce_Project__r.Status__c);
            }
        }
    }

    //parent includes child
    public void print4(){
        List<Salesforce_Project__c> projList = [SELECT Name, Project_Name__c, Status__c, (SELECT Name, Priority__c  FROM Salesforce_Tickets__r) FROM Salesforce_Project__c];
        for(Salesforce_Project__c each: projList){
            System.debug(each.Project_Name__c);
        }
    }

    public void print5(){
        List<Salesforce_Project__c> projList = [SELECT Name, Project_Name__c, Status__c, (SELECT Name, 	Priority__c FROM Salesforce_Tickets__r) FROM Salesforce_Project__c];
        System.debug(projList);
        for(Salesforce_Project__c proj: projList){
            System.debug(proj);
            for(Salesforce_Ticket__c tick: proj.Salesforce_Tickets__r){
                System.debug('??? ' +tick);
            }
        }
    }

    public void print6(){
        List<Account> accList = [SELECT Name, AnnualRevenue, (SELECT Name, StageName, Amount FROM Opportunities) FROM Account];
        List<Opportunity> oppList = new List<Opportunity>();
        Map<String, Decimal> accOppTotal = new map<String, Decimal>();
        decimal oppTotalAmount = 0;
        Integer oppCount = 0;
        System.debug(accList);
        for(Account acc: accList){
            System.debug(acc);
            decimal eachAccAmount = 0;
            for(Opportunity opp: acc.Opportunities){
                oppCount = oppCount+1;
                oppList.add(opp);
                eachAccAmount = eachAccAmount + opp.Amount;
                oppTotalAmount = oppTotalAmount + opp.Amount ;
                System.debug(oppCount + '  ' +acc.Name+ '????' +opp);
                accOppTotal.put(acc.Name, eachAccAmount);
            }
        }
        System.debug(oppList);
        System.debug(oppCount);
        System.debug(oppTotalAmount);
        System.debug(accOppTotal);
    }

    public void print7(){
        

    }

    



}