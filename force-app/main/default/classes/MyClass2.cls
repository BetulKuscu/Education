public class MyClass2 {
    public static String ilkHarfiVer (String str){
        if(str.equals('')) {
            return str;
        }
        return str.substring(0,1);
    }
}