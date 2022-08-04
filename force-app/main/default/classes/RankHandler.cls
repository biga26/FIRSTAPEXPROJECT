public class RankHandler {

    public string returnPrice(Integer rank) {

        string price = '';

        if(rank == 1){
            price = 'Gold';
        }else if(rank == 2){
            price = 'Silver';
        }else if(rank == 3){
            price = 'Bronze';
        }else{
            if(rank >=4 && rank <=10){
                price = 'Honorable mention';
            }
        }

        return price;   

    }

    /*
RankHandler demo = new RankHandler();
String price = demo.returnPrice(3);
system.debug('Price is ' + price);
    */

    public string returnPriceSwitch(Integer rank){
        string price = '';
        switch on rank {
            when 1 {
                price = 'Gold';
            }
            when 2 {
                price = 'Silver';
            }
            when 3 {
                price = 'Bronze';
            }
            when 4,5,6,7,8,9,10{
                price = 'Honorable mention';
            }
            when else{
                price = 'Participant';
            }

        }
        return price;

    }
    /*
RankHandler demo = new RankHandler();
String priceWhen = demo.returnPriceSwitch(2);
system.debug('Switch price: ' + priceWhen);
    */


}