public class CustomMetadataHelper {
    
    
    public static decimal getCurrencyRate(String CurrencyISOCode) {
        
        Currency_Conversion__mdt conversionRecord = Currency_Conversion__mdt.getInstance(CurrencyISOCode);
  
        return conversionRecord.Rate__c;

    }
}