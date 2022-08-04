trigger OpportunityLineItemTrigger on OpportunityLineItem (before insert, after insert, before update, after update, before delete, after delete, after undelete){


    if(Trigger.isBefore){
        if(Trigger.isDelete){
            System.debug('Before delete trigger.new: ' +Trigger.new);
            System.debug('Before delete trigger.newMap: ' +Trigger.newMap);
            System.debug('Before delete trigger.old: ' +Trigger.old);
            System.debug('Before delete trigger.oldMap:' +Trigger.oldMap);
        }
    }


    System.debug('===================================================');

    if(Trigger.isAfter){
        if(Trigger.isDelete){
            System.debug('After delete trigger.new: ' +Trigger.new);
            System.debug('After delete trigger.newMap: ' +Trigger.newMap);
            System.debug('After delete trigger.old: ' +Trigger.old);
            System.debug('After delete trigger.oldMap:' +Trigger.oldMap);
        }
    }

    System.debug('===================================================');

    
    if(Trigger.isUndelete){
        System.debug('After undelete trigger.new: ' +Trigger.new);
        System.debug('After undelete trigger.newMap: ' +Trigger.newMap);
        System.debug('After undelete trigger.old: ' +Trigger.old);
        System.debug('After undelete trigger.oldMap: ' +Trigger.oldMap);
    }
    







}