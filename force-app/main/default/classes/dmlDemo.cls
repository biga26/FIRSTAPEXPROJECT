public class dmlDemo {
    
    
    public static void dmlStandardObject() {

        Account acc = new Account();
        acc.Name = 'ApexTest';
        acc.Rating = 'Hot';
        insert acc;

        acc.AccountSource = 'Web';
        acc.Type = 'Prospect';
        update acc;
    }

    public static void dmlCustomObject(){

        Salesforce_Project__c proj = new Salesforce_Project__c();
        proj.Project_Name__c = 'Hello World2';
        insert proj;

        proj.Status__c = 'Completed';
        proj.Description__c = 'This is for Testing Apex2';
        update proj;
    }


    public static void dmlSOQL(){
        Salesforce_Project__c proj = [SELECT Project_Name__c, Status__c FROM Salesforce_Project__c WHERE Project_Name__c ='Hello World' LIMIT 1];
        proj.Status__c = 'New';
        update proj;
    }

    // public static void dmlConWithAcc(){ // tazeden etmeli
    //     Account acc = new Account();
    //     acc.Name = 'AccForRelationship';
    //     insert acc;

    //     Contact con = new Contact();
    //     con.FirstName = 'Shahrukh';
    //     con.LastName = 'Khan';
    //     con.AccountId = acc.id;
    //     insert con;
    // }

    public static void dmlTicketWithProject(){
        Salesforce_Project__c proj = [SELECT Project_Name__c, Status__c FROM Salesforce_Project__c WHERE Project_Name__c ='Zeta' LIMIT 1];
        Salesforce_Ticket__c ticket = new Salesforce_Ticket__c();
        ticket.Subject__c = 'TicketFromApex3';
        ticket.Status__c = 'In development3';
        ticket.Salesforce_Project__c = proj.id;

        insert ticket;

    }


    public static void dmlwithmoreAccounts(){
        List<Account> accList = new List<Account>();
        Account acc1 = new Account();
        acc1.Name = 'TestAccount1';
        accList.add(acc1);

        Account acc2 = new Account();
        acc2.Name = 'TestAccount2';
        accList.add(acc2);

        Account acc3 = new Account();
        acc3.Name = 'TestAccount3';
        accList.add(acc3);
        insert accList;
    }


    // public static void upserttDemo(){
    //     //insert + update
    //     List<Salesforce_Project__c> projList = new List<Salesforce_Project__c>();
    //     //creaeteing
    //     Salesforce_Project__c proj = new Salesforce_Project__c();
    //     proj,Project_Name__c = 'upsertTesting';
    //     projList.add(proj);
    //     Salesforce_Project__c projUpdate = [SELECT Name FROM Salesforce_Project__c LIMIT 1];
    //     projUpdate.Project_Name__c = 'upsertTestingUpdate';
    //     projList.add(projUpdate);




    // }







}