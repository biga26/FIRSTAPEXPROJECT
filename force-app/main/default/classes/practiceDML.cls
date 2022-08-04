public class practiceDML {



    //okadym

    // public void createContacts(Account acc){
    //     List<Contact> conList = new List<Contact>();
    //         for(Integer i=1;i<=10;i++){
    //             Contact con = new Contact();
    //             con.FirstName = 'DemoDML'+i;
    //             con.LastName = acc.Name;
    //             con.AccountId = acc.id;
    //             conList.add(con);
    //         }
    //         if(!conList.isEmpty()){
    //         insert conList;
    //         }
    // }


/*
practiceDML demo = new practiceDML();
Account acc = new Account(Name = 'practiceAccount');
insert acc;
demo.createContacts(acc);
*/


        public void updateOpps(){
            List<Opportunity> oppList = [SELECT Name, Description, CreatedDate FROM Opportunity ORDER BY CreatedDate DESC LIMIT 10];
            if(!oppList.isEmpty()){
                for(Opportunity opp: oppList){
                opp.Description = 'TThis is one of the top 10 opportunity. Please work on this as priority';

                }
            }
            update oppList;

        }
        /*
practiceDML demo = new practiceDML();
demo.updateOpps();
        */

        public void createTaskForCase(){
            List<Case> caseList = [SELECT Status FROM Case WHERE Status ='New'];
            List<Task> taskList = new List<Task>();
            for(Case cs: caseList){
                Task tsk = new Task();
                tsk.Subject = 'Call';
                tsk.Priority = 'Normal';
                tsk.Status = 'Not Started';
                tsk.WhatId = cs.id;
                tsk.ActivityDate = Date.today() + 3;
                taskList.add(tsk);
            }

            if(!taskList.isEmpty()){
                insert taskList;
            }
        }
        /*
practiceDML demo = new practiceDML();
demo.createTaskForCase();
        */


    
}