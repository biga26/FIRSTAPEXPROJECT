public class testTriggerTaskHandler {
    
    
    
    public static void updateLeadNextActivityDate(List<Task> taskTriggerNew, List<Task> taskTriggerOld, 
                                                Map<Id,Task> taskTriggerNewmap, map<Id,task> taskTriggerOldMap) {
        
        set<id> setOfLeadId = new set<id>();                                        

        if(taskTriggerOld == null){
            for(task eachTask: taskTriggerNew){
                if(eachTask.WhoId != null && eachTask.WhoId.getSobjective().getDescribe().getName() == 'Lead' && 
                    eachTask.ActivityDate != null){
                    
                    setOfLeadId.add(eachTask.WhoId);

                   

                }
            }
        }

    }





}