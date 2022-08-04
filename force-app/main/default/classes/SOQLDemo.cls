public class SOQLDemo {


    //okadym
    
    // SOQL BASIC query
    public static void accountSOQL1(){ // dogry
        List<Account> accList = [SELECT ID, Name, Phone, Rating, AccountNumber FROM Account  WHERE Name LIKE '%United%'];
        //system.debug('Print only name ' +accList.get(0).Name);
        system.debug(accList);
        
        for(Account accValue: accList){
            String accountName = accValue.Name;
            String accountRating = accValue.Rating;
            String accountNumber = accValue.AccountNumber;
            system.debug('Account Name ' + accountName + ' &  ' + 
                        'Account Phone' + accValue.Phone + ' & ' +
                        'Account Rating ' + accountRating);
    
        }
       
    }



    //SOQL SIngle Record
    public static void accountSOQL2(){
        Account acc = [SELECT ID, Name, Phone, Rating FROM Account WHERE Name LIKE '%United%' LIMIT 1];
        system.debug('Account: ' + acc);
        system.debug('Name:' + acc.Name);
        String phoneNumber = acc.Phone;
        system.debug('Phone' + phoneNumber);
        system.debug('Rating ' + acc.Rating);
    }

    //SOQL with variables

    public static void oppSOQLwithVariable(){
        String StageValue = 'Closed WOn';
        List<Opportunity> oppList = [SELECT NAME, Amount, StageName FROM Opportunity WHERE StageName =: StageValue];
        system.debug(oppList);
    }


    //SOQL Parent to child
    public static void ticketToProject(){
        List<Salesforce_Ticket__c> ticketWithProjectList = [SELECT ID, Name, Priority__c, Salesforce_Project__r.Name, Salesforce_Project__r.Status__c  FROM Salesforce_Ticket__c];
        system.debug('Child to Parent - Ticket to Project' + ticketWithProjectList);
        system.debug('Above');
    }



    //SOQL child to parent
    public static void accountToContacts(){
        List<Account> accWithConList = [SELECT Name, (SELECT Name, Phone FROM Contacts) FROM Account];
        system.debug(accWithConList);
        system.debug('==================================');
        for(Account acc: accWithConList){
            system.debug(acc.Name);
            for(Contact con: acc.Contacts){
                system.debug('Contact Name: ' +con.Name);
                system.debug('Contact Phone: ' + con.Phone);
            }
            
        }

    }

    //SOQL Project to Ticket
    public static void projectToTicket(){
        List<Salesforce_Project__c> projWithTicketsList = [SELECT ID, Name, Status__c, Project_Name__c, (SELECT Name, Status__c FROM Salesforce_Tickets__r) FROM Salesforce_Project__c];
        system.debug('Hello');
       
       
        for(Salesforce_Project__c proj: projWithTicketsList){
            system.debug('Project Name: ' + proj.Project_Name__c);
            system.debug('Oroject status: ' + proj.Status__c);
            for(Salesforce_Ticket__c ticket: proj.Salesforce_Tickets__r){
                system.debug('Hi');
                system.debug('Name of Ticket: ' + ticket.Name);
                system.debug('Ticket priority: ' + ticket.Status__c);
            }

        }
    }






    public static void AccToOpps(){
        List<Account> accToOppsList = [SELECT Id, Name, (SELECT Name, CloseDate FROM Opportunities WHERE CloseDate > Today) FROM Account];
        for(Account acc: accToOppsList){
            system.debug('Acc Name: ' + acc.Name);
        }
    }

    

    public static void SOSLDemo(){

        List<List<sObject>> searchList = [FIND 'Tom' IN Name FIELDS RETURNING Lead(Name,Email, Phone), Contact(Name, Id)];
        system.debug(searchList);

        List<Lead> leadList = (List<Lead>)searchList[0];
        List<Contact> conList = (List<Contact>)searchList[1];

        system.debug('Lead List:' + leadList);
        system.debug('Contact List:' + conList);
    }



    






 
   
}