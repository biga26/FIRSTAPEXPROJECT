public class demoStaticNonStatic {

    //okadym
    
     /*1.Calculate Age in Months*/
    public void calculateAgeInMonths(){
        date birthDate = date.newInstance(2005, 10, 10);
        date todayDate = date.today();
        //Calculate month difference between two dates
        integer ageInMonths = birthDate.monthsBetween(todayDate);
    }
    /*2.Calculate Age in days*/
    public void calculateAgeIndays(){
        date birthDate = date.newInstance(2005, 10, 2);
        date todayDate = date.today();
        //Calculate month difference between two dates
        integer ageInMonths = birthDate.daysBetween(todayDate);
    }
    /*3.Calculate and Print Subscription end date*/
    public void printSubscriptionEndDate(){
        //Subscribe Today
        date subscriptionDate = date.today();
        //Add 1000 days 
        date subscriptionEndDate = subscriptionDate.addDays(1000);
        system.debug('Print Subscription end date: '+subscriptionEndDate);
        //Find subscription end year and month
        Integer endYear = subscriptionEndDate.year();
        Integer endMonth = subscriptionEndDate.month();
        system.debug('Print Subsciption end year: '+endYear);
        system.debug('Print Subscription end month: '+endMonth);       
    }
    /*4.Calculate and Print Offer End date*/
    public void printOfferEndDateTime(){
      //Offer starts now
      datetime dtOffer = datetime.now();
      //Add 51 hours
      datetime dtofferend = dtoffer.addHours(51);
      system.debug('Print Offer End date/time :'+dtofferend);  
      //Print only end date
      Date endDate = dtofferend.date();
      system.debug('Offer end date: '+endDate);
      //Print only end time
      Time endTime = dtofferend.time();
      system.debug('Offer end time: '+endTime);
    }
    
    /*5.Calculate and Print remaining days in the Subscription*/
    public void printNoOfRemainingDays(){
        //Subscription past date
        date subscriptionDate = date.newInstance(2021, 06, 15);
        //Add 365 days = 1 Year subscription 
        date subscriptionEndDate = subscriptionDate.addDays(365);
        system.debug('Print Subscription end date: '+subscriptionEndDate); 
        //Calculate Remaining days left in the subsciption
        date todayDate = date.today();
        Integer remainingDays = todayDate.daysBetween(subscriptionEndDate);
        system.debug('Remaining days left in the subscription :'+remainingDays);
    }

}