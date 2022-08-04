public class testTriggerCaseHandler {
    
    
    public static void printStatusDetails(List<Case> caseTriggerNew, List<Case> caseTriggerOld, Map<Id,case> caseTriggerNewmap,
                                             map<Id,Case> caseTriggerOldMap) {
        if(caseTriggerOld == null){ //it means insert
            caseTriggerNew = trigger.new;
            for(Case eachCase: caseTriggerNew){
                System.debug('Status set to: ' +eachCase.Status);
                System.debug('Case Origin set to: ' + eachCase.Origin);
            }
        }
        if(caseTriggerOld != null){ // it means update
            for(Case eachCase: caseTriggerNew){
                Case OldCase = caseTriggerOldMap.get(eachCase.id);
                if(eachCase.Status != OldCase.Status){
                    System.debug('Status has changed from: ' +eachCase.Status+ ' to: ' +OldCase.Status);
                }else{
                    System.debug('Same status: ' + eachCase.Status);
                }
            }
        
        }
    }


    public static void createDefaultTask(List<Case> caseTriggerNew, Map<Id,case> caseTriggerNewmap){
        List<Task> createTasks = new list<Task>();
        for(Case eachCase: caseTriggerNew){
               Task t = new Task();
               t.Subject = 'Email';
               t.Priority = 'Normal';
               t.WhatId = eachCase.ContactId;
               t.WhatId = eachCase.id;
               t.ActivityDate = date.today();
               createTasks.add(t);

        }
        if(!createTasks.isEmpty()){
            insert createTasks;
        }
    }






}