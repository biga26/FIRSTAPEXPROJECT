public class customMetadataDemo {
    
    
    
    public static void customMetadataDemoMethod(){
        //SOQL
        List<Country_Code_cm__mdt> cusMetadaList = [SELECT ID, MasterLabel, DeveloperName, Country_Code__c, Telephone_Code__c FROM Country_Code_cm__mdt];
        System.debug('SOQL CM: ' +cusMetadaList);
        //Map
        Map<String, Country_Code_cm__mdt> cusMetadataMap = Country_Code_cm__mdt.getAll();
        System.debug('Map CM: ' +cusMetadataMap);

    }
}