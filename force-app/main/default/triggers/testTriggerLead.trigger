trigger testTriggerLead on Lead (before insert, after insert, before update, after update) {
 
  
    if(trigger.isBefore){
        //inserted or updated
        testTriggerLeadHandler.updateClosedLostDate(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }


    if(trigger.isBefore){
        testTriggerLeadHandler.checkClosedLostReason(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }



}