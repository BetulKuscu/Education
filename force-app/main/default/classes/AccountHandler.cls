public class AccountHandler {

    public static void insertAccount(Integer value){
        Integer n = 1;
        List<Account> addAccounts = new List<Account>();
        while(n<=value){
            System.debug('n Value before Incrementing'+ n);
            Account factory = new Account();
            factory.Name ='Acme Inc N'+ n ;
            factory.AccountNumber = 'A000'+ n;
            addAccounts.add(factory);
            System.debug(addAccounts);
            n=n+1;
            System.debug('n Value after incrementing'+ n);
        }
        System.debug('Size of Account List: ' + addAccounts.size() );
        System.debug('Elements in Account List: ' + addAccounts);
        insert addAccounts;
    }
}