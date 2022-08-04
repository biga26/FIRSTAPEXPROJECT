trigger SalesforceTicketTrigger on Salesforce_Ticket__c (after update) {


    /*
WHen ticket is completed. check if all other ticketrs of project are completed or cancelled. if yes, then automatically mark the project as complete
    */

    if(Trigger.isAfter && Trigger.isUpdate){
        SalesforceTicketTriggerHandler.projMarkComplete(Trigger.new );
    }

}