trigger AccountPracticeTrigger on Account (before insert, before update, after update, before delete, after delete, after undelete) {
    
     //NO DML Inside before Triggers 
    //Scenario 1   
    if(Trigger.isBefore && Trigger.isInsert){        
        AccountPracticeTriggerHandler.fillShippingDetails(Trigger.New);            
    }
    
     //Scenario 4 / practice
    if(Trigger.isAfter && Trigger.isUpdate){
        AccountPracticeTriggerHandler.matchMailingAddressContacts(Trigger.New, Trigger.OldMap);
        AccountPracticeTriggerHandler.contactVIPUpdate(Trigger.New,Trigger.NewMap,Trigger.OldMap);
    }
    
    
    
     //Scenario 5
    if(Trigger.isBefore && (Trigger.isInsert || Trigger.isUpdate))
    {
        Boolean directFlag = false;
        directFlag = Trigger.isInsert;
        AccountPracticeTriggerHandler.updateAccDescription(Trigger.new,Trigger.OldMap,directFlag);
    }




    //scenario 6
    if(trigger.isBefore && trigger.isDelete){
        AccountPracticeTriggerHandler.addErrorOnDelete(Trigger.old);
    }


    //scenarop 7
    if(trigger.isAfter && trigger.isDelete){
        AccountPracticeTriggerHandler.sendEmailOnDelete(Trigger.old);
    }

    // scenario 8
    if(trigger.isAfter && trigger.isUndelete){
        AccountPracticeTriggerHandler.sendEmailOnUndelete(Trigger.new);
    }


    // practice 1
    if(Trigger.isAfter && Trigger.isUpdate){
        AccountPracticeTriggerHandler.updateOpps(Trigger.new);
    }

    
    
    
   
    
    
    
    
    

    
    
}