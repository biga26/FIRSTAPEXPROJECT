public class datetimeMethodsDemo {
    

    // okamalu

    public void calculateAgeInMonths(){
        Date birthDate = Date.newInstance(1990, 7, 23);
        Date todayDate = Date.today();
        Integer ageInMonths = birthDate.monthsBetween(todayDate);
        system.debug('print age in months: ' + ageInMonths);        
    }
    
    public void calculateAgeInDays(){
        Date birthDate = Date.newInstance(1990, 7, 23);
        Date todayDate = Date.today();
        Integer ageInDays = birthDate.daysBetween(todayDate);
        system.debug('print age in days: ' + ageIndays);
    }
    
    public void printSubscriptionEndDate(){
        Date todayDate = Date.today();
        Date endDate = todayDate.addDays(1000);
        system.debug('Start date is ' + todayDate);
        system.debug('End date is ' + endDate);
        Integer yearOfEnd = endDate.year();
        Integer monthOfEnd = endDate.month();
        system.debug('end year is:' + yearOfEnd + '------> end month: ' + monthOfEnd);
    }
    
    public void printOfferEndDateTime(){
        DateTime offerStart = DateTime.now();
        DateTime offerEnd = offerStart.addHours(51);
        system.debug('offer end ' + offerEnd);
    }
    
    public void printNoOfRemainingDays(){
        Date startDate = Date.newInstance(2021, 6, 15);
        Date endDate = startDate.addYears(1);
        Date dateToday = Date.today();
        Integer remainDays = endDate.daysBetween(dateToday);
        system.debug('Remaining days ' + remainDays);
    }
    
    

}