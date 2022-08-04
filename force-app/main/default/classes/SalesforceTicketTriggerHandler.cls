public with sharing class SalesforceTicketTriggerHandler {
    
    
    public static void projMarkComplete(List<Salesforce_Ticket__c> tcktTriNew) {
        //Seggreagate the Ids marked as complete
        Set<ID> projIDS = new SET<ID>();

        for(Salesforce_Ticket__c tckt: tcktTriNew){
            if(tckt.Status__c == 'Completed'){
                projIDS.add(tckt.Salesforce_Project__c);
            }
        }
        //System.debug(projIDS);



        //SOQL for checking Child tickets

        LIST<Salesforce_Project__c> projWithClosedTckts = [SELECT ID, Status__c, (SELECT ID, Status__c FROM Salesforce_Tickets__r WHERE Status__c = 'Completed' OR Status__c = 'Cancelled') FROM Salesforce_Project__c WHERE ID IN: projIDS];

        if(!projWithClosedTckts.isEmpty()){
            for(Salesforce_Project__c proj: projWithClosedTckts){
                proj.Status__c = 'Completed';
            }
            update projWithClosedTckts;
        }

    }


}