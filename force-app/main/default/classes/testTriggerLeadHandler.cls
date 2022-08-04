public class testTriggerLeadHandler {

    
    
    public static void updateClosedLostDate(List<Lead> leadTriggerNew, List<Lead> leadTriggerOld, Map<Id,Lead> leadTriggerNewmap, map<Id,Lead> leadTriggerOldMap) {

        // if(leadTriggerOld == null){ // insert
        //     for(Lead eachLead: leadTriggerNew){
        //         if(eachLead.Status == 'Open - Not Contacted'){
        //             eachLead.Created_Date__c = datetime.now();
        //         }else if(eachLead.Status == 'Working - Contacted'){
        //             eachLead.Contacted_Date__c = datetime.now();
        //         }else if(eachLead.Status == 'Closed - Converted'){
        //             eachLead.Closed_Won_Date__c = datetime.now();
        //         }else if(eachLead.Status == 'Closed - Not Converted'){
        //             eachLead.Closed_Lost_Date__c = datetime.now();
        //         }else if(eachLead.Status == 'Closed - Converted'){
        //             eachLead.Closed_Won_Date__c = datetime.now();
        //         }else{
        //             eachLead.Created_Date__c = datetime.now();
        //         }
        //     }
        // }
        // System.debug('=============================================================');

        // if(leadTriggerNew != null){ // update
        //     for(Lead eachLead: leadTriggerNew){
        //         Lead oldLead = leadTriggerOldMap.get(eachLead.id);
        //         if(eachLead.Status == 'Closed - Not Converted' && oldLead.Status != eachLead.Status){ 
        //             System.debug('Status changed from: ' + oldLead.Status+ ' to: ' +eachLead.Status);
        //             eachLead.Closed_Lost_Date__c = datetime.now();
        //         }
        //     }
        // }




        boolean wantToUpdateDate = false;


        for(lead eachLead: leadTriggerNew){
            if(leadTriggerOld == null){
                wantToUpdateDate = true;
            }
            if(leadTriggerOld != null){
                if(leadTriggerOldMap.get(eachLead.id).Status != eachLead.Status){
                    wantToUpdateDate = true;
                }
            }
            
            if(wantToUpdateDate){
                
                switch on eachLead.Status {
                    when null  {
                        eachLead.Created_Date__c = datetime.now();
                    }
                    when '' {
                        eachLead.Created_Date__c = datetime.now();
                    }
                    when 'Open - Not Contacted'{
                        eachLead.Created_Date__c = datetime.now();
                    }
                    when 'Working - Contacted'{
                        eachLead.Contacted_Date__c = datetime.now();  
                    }
                    when 'Closed - Converted' {
                        eachLead.Closed_Won_Date__c = datetime.now();
                    }
                }
            }
            
            
        }
    }


    public static void checkClosedLostReason(List<Lead> leadTriggerNew, List<Lead> leadTriggerOld, Map<Id,Lead> leadTriggerNewmap, map<Id,Lead> leadTriggerOldMap){

        for(Lead eachLead: leadTriggerNew){
            if((trigger.old == null) || (trigger.old != null)){
                if(eachLead.Status == 'Closed - Not Converted' && eachLead.Closed_Lost_Reason__c == null){
                    eachLead.Closed_Lost_Reason__c.addError('Mention reason if you want to close lost');
                }
            }
        }
    }





}