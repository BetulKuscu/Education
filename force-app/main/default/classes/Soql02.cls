public class Soql02 {
    //1. yol:
    public static void method01(){
        AggregateResult[]result= [SELECT MIN(NumberOfEmployees),MAX(NumberOfEmployees),AVG(NumberOfEmployees) FROM Account];
        System.debug(result);
        System.debug('Minimum Number Of Employees=' + result[0].get('expr0') );
        System.debug('maximum Number Of Employees=' + result[0].get('expr1') );
        System.debug('Average Number Of Employees=' + result[0].get('expr2') );
    }
    
    //2. yol:
    public static void method02(){
        //Alias==> takma isim
        AggregateResult[]result= [SELECT MIN(NumberOfEmployees) min, MAX(NumberOfEmployees) max, AVG(NumberOfEmployees) avg FROM Account];
        System.debug(result);
        System.debug('Minimum Number Of Employees=' + result[0].get('min') );
        System.debug('Maximum Number Of Employees=' + result[0].get('max') );
        System.debug('Average Number Of Employees=' + result[0].get('avg') );
    }




//Example 2:

 public static void method03(){
   AggregateResult[] result=[SELECT Industry, AVG(NumberOfEmployees) avgByIndustry FROM Account GROUP BY Industry];
    System.debug(result);
     for(AggregateResult w:result){
            System.debug('Industry:'+w.get('Industry')+ '==>Average Number of Employees:'+w.get('avgByIndustry'));
        }
}
    
    public static void method04(){
   AggregateResult[] result=[SELECT Industry, AVG(NumberOfEmployees) avgByIndustry FROM Account GROUP BY Industry];
    System.debug(result);
        for(AggregateResult w:[SELECT Industry, AVG(NumberOfEmployees) avgByIndustry FROM Account GROUP BY Industry]){
            System.debug('Industry:'+w.get('Industry')+ '==>Average Number of Employees:'+w.get('avgByIndustry'));
        }
}


}