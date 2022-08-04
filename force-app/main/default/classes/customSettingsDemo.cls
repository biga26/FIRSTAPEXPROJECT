public class customSettingsDemo {
    
    
    
    
    public static void customSettingsDemoMethod() {

        //List Custom settings
        map<String, Country_Code_cs__c> counCodeMap = Country_Code_cs__c.getAll();
        System.debug('custom setting LIST: ' +counCodeMap);
        for(Country_Code_cs__c cs: Country_Code_cs__c.getAll().values()){
            System.debug('each code: ' +cs.Country_Code__c);
        }



        // hierarchy custom settings
        Golds_Gym_Membership__c gm1 = Golds_Gym_Membership__c.getorgDefaults();
        // Parameters - UserID/ProfileID
        Golds_Gym_Membership__c gm2 = Golds_Gym_Membership__c.getInstance(UserInfo.getUserId());
        Golds_Gym_Membership__c gm3 = Golds_Gym_Membership__c.getInstance('00e8b000002JE9o');
        System.debug(gm1);
        System.debug(gm2);
        System.debug(gm3);




    }
}