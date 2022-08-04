public class students {

    //Okadym
    
    public String firstName;
    public string lastName;
    public integer classYear;
    public string majorStream;



    public string generateReport() {

        system.debug('Report Generated' +firstName+ ' ' +lastName+ ' of ' +classYear);
        return majorStream;



    }
}


/*
students stud = new students();
stud.firstName = 'Biga';
stud.lastName = 'Aman';
stud.classYear = 2012;
stud.majorStream = 'Finance';
String returnValue = stud.generateReport();
system.debug(returnValue);

*/