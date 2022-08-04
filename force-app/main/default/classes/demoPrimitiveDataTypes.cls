public class demoPrimitiveDataTypes {

    //okadym
    
    public void displayValues(){
        
        String favCharacter = 'Rachel';
        Integer season = 10;
        Boolean isHeCute = true;
        
        system.debug('My favourite Character is ' + favCharacter);
        system.debug('How many seasons in Friends? '+ season);
        system.debug('Is Joey Cute?' + isHeCute);
        system.debug('Is Joe Cute? ' + isHeCute + ' Yes he is');

        Long myLongNum = 17773737L;
        Double myDoubleNum = 456.88;
        system.debug('print my long number' + myLongNum);
        system.debug('print my double number' + myDoubleNum);

        Date myDate = system.today();
        ID mySalesforceID = '0018b000020VJkcAAG';
        Object myObj = 12345;
        system.debug('print my date' + myDate);
        system.debug('print my Id' + mySalesforceID);
        system.debug('print the obj' + myObj);

        String firstName = 'Begench';
        String lastName = 'Amanmyradov';
        String fullName = firstName + lastName;
        system.debug('Fullname '+ fullName);
        
    }

}