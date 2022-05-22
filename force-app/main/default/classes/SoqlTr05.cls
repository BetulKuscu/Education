public class SoqlTr05 {

    public static void method01(){
        Account acc1 = new Account (Name='Test01', Phone= '123');
        acc1.Rating = 'Hot';
        
        Insert acc1;
    }
}