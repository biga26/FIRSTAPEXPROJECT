public class AccountPracticeTriggerHandler {
    
    //Scenario 1
    public static void fillShippingDetails(List<Account> accList){
        for(Account acc : accList){
            if(acc.ShippingStreet == NULL){
                acc.ShippingStreet = acc.BillingStreet;
            }
            if(acc.ShippingCity == NULL){
                acc.ShippingCity = acc.BillingCity;
            }
            if(acc.ShippingState == NULL){
                acc.ShippingState = acc.BillingState;
            }
            if(acc.ShippingPostalCode == NULL){
                acc.ShippingPostalCode = acc.BillingPostalCode;
            }
            if(acc.ShippingCountry == NULL){
                acc.ShippingCountry = acc.BillingCountry;
            }
        }    
    }

    
    //Scenario 4
    public static void matchMailingAddressContacts(List<Account> accTriNew, Map<ID,Account> accOldMap){
        //10 accounts - Trigger.new   
             
        List<Account> accToUpdate = new List<Account>();
        for(Account acc : accTriNew){
            if(acc.BillingStreet != accOldMap.get(acc.id).BillingStreet){
                accToUpdate.add(acc);
            }
        }        
        //SOQL - To fetch Contacts
        List<Account> accWithContactList = [Select ID,Name,BillingStreet,BillingCity,BillingState,BillingCountry,BillingPostalCode,(Select ID,Name from Contacts) FROM Account where ID IN :accToUpdate];
        List<Contact> conToUpdate = new List<Contact>();
        for(Account acc : accWithContactList){
            for(Contact con : acc.Contacts){
                con.MailingStreet = acc.BillingStreet;
                con.MailingCity =  acc.BillingCity;
                con.MailingState = acc.BillingState;
                con.MailingCountry = acc.BillingCountry;
                con.MailingPostalCode = acc.BillingPostalCode; 
                conToUpdate.add(con);
            }
        }
        if(!conToUpdate.isEmpty()){
            update conToUpdate;
        }
        
    }
    

    public static void updateAccDescription(List<Account> accTriNew, Map<ID,Account> accOldMap,Boolean directFlag){       
        
        for(Account acc : accTriNew){
            //Update Operation
            if(!directFlag){
                if((acc.Active__c  != accOldMap.get(acc.id).Active__c && acc.Active__c == 'Yes')){
                    acc.Description = 'Account is Active';
                }
            }
            //Insert Operation
            if(directFlag && acc.Active__c == 'Yes'){
                acc.Description = 'Account is Active';                
            }
            
            
        }
        
    }
    
    
         //practice
    public static void contactVIPUpdate(List<Account> accTriNew, Map<ID,Account> accNewMap, Map<ID,Account> accOldMap){
        Set<ID> accVIPChanged = new Set<ID>();
        
        for(Account acc : accTriNew){
            if(acc.VIP__c != accOldMap.get(acc.id).VIP__c){
                accVIPChanged.add(acc.id);
            }
        }        
        List<Contact> conList = [Select ID, Name, Account.id,VIP__c from Contact where Account.id IN :accVIPChanged];
        for(Contact con : conList){
            con.VIP__c = accNewMap.get(con.Account.id).VIP__c;            
        }
        update conList;         
        
    }


    //scenario6
    public static void addErrorOnDelete(List<Account> accTriOld){
        for(Account acc: accTriOld){
            if(acc.Active__c == 'Yes'){
                acc.addError('You cannot delete active account. buuuuuuuuu');
                System.debug('not deleted');
            }
        }
    }


    //scenario 7
    public static void sendEmailOnDelete(List<Account> accTriOld){
        List<Messaging.SingleEmailMessage> emailMsgs = new List<Messaging.SingleEmailMessage>();
        for(Account acc: accTriOld){
            Messaging.SingleEmailMessage emailMsg = new Messaging.SingleEmailMessage();
            List<String> emailAddress = new List<String>();
			emailAddress.add(UserInfo.getUserEmail());
            emailMsg.setToAddresses(emailAddress);  // some problem here
            emailMsg.setSubject('Account delete Confirmation');
            emailMsg.setPlainTextBody('Account Name: ' + acc.Name+ ' is deleted');
            emailMsgs.add(emailMsg);
            System.debug('Account deleted: ' +acc.Name);
        }
        Messaging.sendEmail(emailMsgs);
    }




    //scenario 8
    public static void sendEmailOnUndelete(List<Account> accTriNew){
        List<Messaging.SingleEmailMessage> emailMsgs = new List<Messaging.SingleEmailMessage>();
        List<Account> accList = new List<Account>();
        for(Account acc: [SELECT ID, Name FROM Account WHERE ID IN: accTriNew]){
            acc.Active__c = 'Yes';
            acc.Rating = 'Warm';
            acc.AnnualRevenue = 1000000;
            accList.add(acc);
            Messaging.SingleEmailMessage emailMsg = new Messaging.SingleEmailMessage();
            List<String> emailAddress = new List<String>();
			emailAddress.add(UserInfo.getUserEmail());
            emailMsg.setToAddresses(emailAddress);  // some problem here
            emailMsg.setSubject('Account Restore Confirmation');
            emailMsg.setPlainTextBody('Account Name: ' + acc.Name+ ' is restored and active no');
            emailMsgs.add(emailMsg);
            System.debug('restored: ' + acc.Name);
        }
        if(!accList.isEmpty()){
            update accList;
        }
        Messaging.sendEmail(emailMsgs);

    }

    //practice 1

    public static void updateOpps(List<Account> accTriNew){

        //SOQL
        List<Account> accWithOppsList = [SELECT ID, Name, (SELECT ID, Name, StageName FROM Opportunities
                                         WHERE StageName != 'Closed Won') FROM Account WHERE ID IN: accTriNew];
        List<Opportunity> oppToUpdate = new List<Opportunity>();
        for(Account acc: accWithOppsList){
            for(Opportunity opp: acc.Opportunities){
                opp.StageName = 'Closed Lost';
                oppToUpdate.add(opp);
            }
        }
        if(!oppToUpdate.isEmpty()){
            update oppToUpdate;
        }

    }




    
    
    
    
    
    
}