trigger SalesforceProjectPracticeTrigger on Salesforce_Project__c (before insert, after insert, before update, after update) {




    if(Trigger.isAfter && Trigger.isInsert){
        SalesforceProjectPracticeTriggerHandler.createTickets(Trigger.New);
    }



    if(Trigger.isAfter && Trigger.isInsert){
        SalesforceProjectPracticeTriggerHandler.preventDuplicates(Trigger.New);
    }


    //below trigger is not ready yet
    // if(Trigger.isBefore && Trigger.isUpdate){
    //     SalesforceProjectPracticeTriggerHandler.checkForOpenTickets(Trigger.New);
    // }

}