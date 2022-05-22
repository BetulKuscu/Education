public class SoqlTr03 {

    public static void method01(){
      List<Account> accs=  [SELECT Name,Rating FROM Account WHERE Name IN ('GenePoint', 'Burlington Textiles Corp of Amrica','sForce','Dicjenson plc')];
        for(Account w:accs){
            System.debug(w.Name +'-'+w.Rating);
            
        }
    }
    
    public static void method02(){
        List<String> accountNames = new List<String>{'GenePoint', 'Burlington Textiles Corp of Amrica','sForce','Dicjenson plc'};
      List<Account> accs1=  [SELECT Name,Rating FROM Account WHERE Name IN :accountNames];
        for(Account w:accs1){
            System.debug(w.Name +' - '+w.Rating);
            
        }
        
        
      List<Account> accs2=  [SELECT Name,Rating FROM Account WHERE Name NOT IN :accountNames];
        for(Account w:accs2){
            System.debug(w.Name +' - '+w.Rating);
            
        }
        
      List<Account> accs3=  [SELECT Name,Rating FROM Account WHERE Name = :accountNames];
        for(Account w:accs3){
            System.debug(w.Name +' - '+w.Rating);
            
        }
        List<Account> accs4=  [SELECT Name,Rating FROM Account WHERE Name != :accountNames];
        for(Account w:accs4){
            System.debug(w.Name +' - '+w.Rating);
            
        }
    }
    
    
    
    
    
    
}