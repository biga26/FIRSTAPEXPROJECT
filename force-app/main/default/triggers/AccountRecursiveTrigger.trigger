trigger AccountRecursiveTrigger on Account (before insert, after insert) {


    if(Trigger.isAfter && Trigger.isInsert){
        if(!AccountRecursiveTriggerHandler.isTriggerFirstRun){
            AccountRecursiveTriggerHandler.recursivePractice(Trigger.New);
        }
    }

}