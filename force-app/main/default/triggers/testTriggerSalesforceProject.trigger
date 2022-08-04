trigger testTriggerSalesforceProject on Salesforce_Project__c (before insert, after insert, before update, after update) {


/*
    if(trigger.isBefore && trigger.isInsert){
        System.debug('before insert');
    }
    if(trigger.isBefore && trigger.isUpdate){
        System.debug('before update');
    }
    if(trigger.isAfter && trigger.isInsert){
        System.debug('after insert');
    }
    if(trigger.isAfter && trigger.isUpdate){
        System.debug('after update');
    }

    if(trigger.isBefore){
        System.debug('before ' +trigger.new);
        System.debug(trigger.old);
    }
    if(trigger.isAfter){
        System.debug('aftere ' +trigger.new);
        System.debug(trigger.old);
    }
*/





/*
    List<Salesforce_Project__c> newList = new List<Salesforce_Project__c>(); 
    newList = trigger.new;
    
    for(Salesforce_Project__c each: newList){
        System.debug(each.Project_Name__c);
        System.debug(each);
    }
    System.debug(newList.size());
    System.debug(trigger.new.size());
*/
    


    // List<Salesforce_Project__c> newData = trigger.new;
    // List<Salesforce_Project__c> oldData = trigger.old;

    // System.debug(newData);
    // System.debug(oldData);






    // if(trigger.isAfter && trigger.isUpdate){
    //     System.debug('after update');
    //     System.debug('trigger.new is: ' +trigger.new);
    //     System.debug('trigger.old is: ' +trigger.old);

    //     List<Salesforce_Project__c> newData = trigger.new;
    //     List<Salesforce_Project__c> oldData = trigger.old;

    //     for(Salesforce_Project__c proj: newData){
    //         System.debug(proj.Description__c);
    //     }

    //     for(Salesforce_Project__c proj: oldData){
    //         System.debug(proj.Description__c);
    //     }
    // }

     












    System.debug('============================================================');


}