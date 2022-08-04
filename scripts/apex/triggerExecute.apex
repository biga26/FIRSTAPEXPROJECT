List<Account> accList = new List<Account>();
for(integer i=0; i<5; i++){
    Account acc = new Account();
    acc.name = 'testAcc'+ i;
    accList.add(acc);
}

insert accList;