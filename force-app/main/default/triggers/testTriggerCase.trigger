trigger testTriggerCase on Case (before insert, after insert, before update, after update){
    


    /*
    if(trigger.isBefore && trigger.isInsert){
        system.debug('before insert is callsed');
    }
    
    if(trigger.isBefore && trigger.isUpdate){
        system.debug('before update is callsed');
    }
    
    if(trigger.isAfter && trigger.isInsert){
        system.debug('after insert is callsed');
    }
    
    if(trigger.isAfter && trigger.isUpdate){
        system.debug('after  update is callsed');
    }

*/


    if(trigger.isBefore){
        testTriggerCaseHandler.printStatusDetails(Trigger.new, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }

    if(trigger.isAfter && trigger.isInsert){
        testTriggerCaseHandler.createDefaultTask(Trigger.new, Trigger.NewMap);
    }



















    System.debug('Hellooo');
    System.debug('==========================================================');



}