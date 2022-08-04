trigger testTriggerContact on Contact (before insert,after insert, before update, after update) {
    

    /*
    if(trigger.isAfter && trigger.isUpdate){
        System.debug('AFTER UPDATE');
        System.debug('trigger.new is: ' +trigger.new);
        System.debug('trigger.old is: ' +trigger.old);
    }
    
    list<Contact> newC = trigger.new;
    List<Contact> oldC = trigger.old;

    if(trigger.isUpdate){
        for(Contact con: newC){
            for(Contact oldCon: oldC){
                if(con.id == oldCon.id){
                    if(con.LastName != oldCon.LastName){
                        System.debug('New Name:  ' +con.LastName);
                        System.debug('Old Name:  ' +oldCon.LastName);
                    }else {
                        System.debug('Same name');
                    }
                }
            }
        }
    }
    





    
    if(trigger.isBefore && trigger.isInsert){
        System.debug('Before insert');
        System.debug('trigger.new is: ' +trigger.new);
        System.debug('trigger.old is: ' +trigger.old);
        System.debug('trigger.newmap is: ' +trigger.newMap);
        System.debug('trigger.oldmap is: ' +trigger.oldmap);
    }

    if(trigger.isAfter && trigger.isInsert){
        System.debug('After insert');
        System.debug('trigger.new is: ' +trigger.new);
        System.debug('trigger.old is: ' +trigger.old);
        System.debug('trigger.newmap is: ' +trigger.newMap);
        System.debug('trigger.oldmap is: ' +trigger.oldmap);
    }

    if(trigger.isBefore && trigger.isUpdate){
        System.debug('Before update');
        System.debug('trigger.new is: ' +trigger.new);
        System.debug('trigger.old is: ' +trigger.old);
        System.debug('trigger.newmap is: ' +trigger.newMap);
        System.debug('trigger.oldmap is: ' +trigger.oldmap);
    }

    if(trigger.isAfter && trigger.isUpdate){
        System.debug('After update');
        System.debug('trigger.new is: ' +trigger.new);
        System.debug('trigger.old is: ' +trigger.old);
        System.debug('trigger.newmap is: ' +trigger.newMap);
        System.debug('trigger.oldmap is: ' +trigger.oldmap);
    }




    if(trigger.isAfter && trigger.isUpdate){
        System.debug('After Update');
        System.debug('trigger.new is: ' +trigger.new);
        System.debug('trigger.old is: ' +trigger.old);
        System.debug('trigger.newMao is: ' +trigger.newMap);
        System.debug('trigger.oldMap is: ' +trigger.oldMap);

        List<Contact> newC = trigger.new;
        List<Contact> oldC = trigger.old;
        Map<id, Contact> newMapC = trigger.newMap;
        Map<id, Contact> oldMapc = trigger.oldMap;

        for(Contact eachContact: newC){
            String printSt = 'New last name = ' + eachContact.LastName;

            Contact oldContact = oldMapC.get(eachContact.id);
            printSt += ', old Last Name = ' +oldContact.LastName;
            if(eachContact.LastName != trigger.OldMap.get(eachContact.Id).LastName){
                System.debug(printSt); 
            }else{
                System.debug('Last name not changed: ' + eachContact.LastName + '    ' + oldMapC.get(eachContact.id).LastName);
            }



        }


    }
      
    

    */
   
    














    
    
    
    
    
    
    system.debug('=======================================================');
    
    

}