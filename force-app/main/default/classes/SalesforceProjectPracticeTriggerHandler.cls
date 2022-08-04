public class SalesforceProjectPracticeTriggerHandler {
    
    public static void createTickets(List<Salesforce_Project__c> projNew){
        List<Salesforce_Ticket__c> tickList = new List<Salesforce_Ticket__c>();
        for(Salesforce_Project__c proj : projNew){
            Salesforce_Ticket__c tckt = new Salesforce_Ticket__c();
            tckt.Priority__c = 'Medium';
            tckt.Subject__c = 'Default Ticket';
            tckt.Salesforce_Project__c = proj.id;
            tickList.add(tckt);
        }
        if(!tickList.isEmpty()){
            insert tickList;
        }        
    }


    public static void checkForOpenTickets(List<Salesforce_Project__c> projNew, Map<ID, Salesforce_Project__c> projNewMap){
        //Add only the IDs if it markert as Complieted
        Set<ID> projIDs = new set<Id>();
        for(Salesforce_Project__c proj: projNew){
            if(proj.Status__c == 'Completed'){
                projIDs.add(proj.Id);
            }
        }

        //SOQL to fetch open tickets for the Project
        if(!projIDs.isEmpty()){
            List<Salesforce_Project__c> projWIthTicketsOpen = [SELECT ID, Status__c, (SELECT ID, Status__c FROM Salesforce_Tickets__r WHERE Status__c != 'Completed') FROM Salesforce_Project__c WHERE ID IN: projIDs];
            for(Salesforce_Project__c proj: projWIthTicketsOpen){
                if(proj.Salesforce_Tickets__r.size() > 0){
                    //addError cam ne used woth context variables
                    //proj.addError('test'); - see the error
                    projNewMap.get(proj.Id).addError('Project cannot be completed with open tickets');
                }
            }
        }
    }


    public static void preventDuplicates(List<Salesforce_Project__c> projNew){
        Map<String, Salesforce_Project__c> projNameMap = new Map<String, Salesforce_Project__c>();
        for(Salesforce_Project__c proj: projNew){
            projNameMap.put(proj.Project_Name__c, proj);
        }
        //SOQL to check existing project records

    }







}