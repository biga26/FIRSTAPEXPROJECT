public class testDML {
    
    public void print() {
        Training__c c = new Training__c();
        c.Name = '2';
        c.Type__c = 'face t';
        

        insert c;

        System.debug('Inserted: ' +c);
        System.debug(c.Name);
        System.debug(c.Type__c);
    }


    public void print2(){
        Account c = new Account();
        c.Name = 'AAA456';
        c.AnnualRevenue = 123;
        

        insert c;


        System.debug('Inserted');
        System.debug(c);
    }

    public void print3(){
        Account c = [SELECT ID,Name FROM Account WHERE Name = 'sForce'];
        c.Name = 'sForce';
        c.Rating = 'Hot';

        update c;
        System.debug('updated');   
    }

    public void print4(){

        List<Account> projList = [SELECT Name,Rating FROM Account WHERE Name LIKE '%TEST%'];

        for(Account each: projList){
            each.Rating = 'Hot';
        }

        update projList;
    }

    // public static ID print5(){
    //     Salesforce_Project__c proj = new Salesforce_Project__c();
    //     proj.Project_Name__c = 'ABC123';

    //     insert proj;
    //     return proj.ID;

    // }

    // public static void print6(){

    //     Salesforce_Ticket__c c = new Salesforce_Ticket__c();

    //     c.Subject__c = '123';
    //     c.Salesforce_Project__c = proj.ID;

    //     insert c;
    //     System.debug('inserted');

    // }

    
    public void print7(){
        List<Salesforce_Project__c> newProjList = new List<Salesforce_Project__c>();

        for(Integer i=0; i<10; i++){
            Salesforce_Project__c proj = new Salesforce_Project__c();
            proj.Project_Name__c = 'A'+i;
            newProjList.add(proj);

        }
        if(!newProjList.isEmpty()){
            insert newProjList;
            System.debug('inserted');
        }
    }


    public void print8(){
        List<Salesforce_Ticket__c> tickList = [SELECT Name, Status__c FROM Salesforce_Ticket__c WHERE Status__c = ''];
        for(Salesforce_Ticket__c each: tickList){
            each.Status__c = 'Testing';
        }
        update tickList;
        System.debug('updated');
    }

    public void print9(){
        List<Salesforce_Project__c> projList = [SELECT Name, Status__c FROM Salesforce_Project__c WHERE Status__c = ''];
        List<Salesforce_Ticket__c> tickList = new List<Salesforce_Ticket__c>();
        for(Salesforce_Project__c proj: projList){
            Salesforce_Ticket__c tick = new Salesforce_Ticket__c();
            tick.Subject__c = 'new';
            tick.Salesforce_Project__c = proj.id;
            tickList.add(tick);

        }
        insert tickList;
        System.debug('inserted');
    }


    public void print10(Integer counter){
        
        if(counter <= 0){
            return;
        }

        List<Salesforce_Project__c> projList = new List<Salesforce_Project__c>();
        for(integer i=0; i<counter; i++){
            Salesforce_Project__c proj = new Salesforce_Project__c();
            proj.Project_Name__c = 'XYZ'+i;
            projList.add(proj);
        }
        if(!projList.isEmpty()){
            insert projList;
        }
        
        List<Salesforce_Ticket__c> tickList = new List<Salesforce_Ticket__c>();
        for(Salesforce_Project__c eachProj: projList){
            ID projID = eachProj.ID;
            Salesforce_Ticket__c ticket = new Salesforce_Ticket__c();
            ticket.Subject__c = eachProj.Project_Name__c;
            ticket.Salesforce_Project__c = projID;
            tickList.add(ticket);
        }
        if(!tickList.isEmpty()){
            insert tickList;
        }
        System.debug('Finito');
    } 






}