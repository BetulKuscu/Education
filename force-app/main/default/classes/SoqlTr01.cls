public class SoqlTr01 {

    public void method01(){
      List<Account> accs = [SELECT Name,Phone FROM Account];
        System.debug(accs);
        
        for(Account w: accs){
            System.debug('Account Name:'+ w.Name+ '-Account Phone:' +w.Phone);
        }
    }
    
    public static void method02(){
      Map<Id, Account> accsMap= new Map<Id, Account>([SELECT Name,Phone FROM Account]);
          System.debug(accsMap);
        
        for(Account w:accsMap.values()){
            System.debug('Account Name:'+ w.Name);
        }
        
    }
    public static void method03(){
       List<Contact> contacts = [SELECT Contact.Name,
                                 Contact.Department,
                                 Account.Name,
                                 Account.Rating, 
                                 (SELECT Case.CaseNumber,Case.Subject 
                                 FROM Cases) 
                                From Contact];
        
        for(Contact w: contacts){
            System.debug(w.Name +'-'+ w.Department+ '-'+ w.Account.Name+'-'+w.Account.Rating);
        }
        
        for(Contact w: contacts){
            
           for(Case t: w.Cases){
                System.debug(t.CaseNumber +'-'+ t.Subject);
            }
        }
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
    }
}