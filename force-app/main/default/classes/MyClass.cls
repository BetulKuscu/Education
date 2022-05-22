public class MyClass {
        //Rastgele bir harf ureten bir fonksiyon olusturunuz
    public static String rastgeleBirHarfVer(){
        String alfabe='ABCDEFGHIJKLMNOPRSTVYZabcdefghijklmnoprstvyz';
        Integer maxIndex=alfabe.length()-1;
        Integer rastgeleIndex=Integer.valueOf(Math.random()*maxIndex);
        return alfabe.substring(rastgeleIndex,rastgeleIndex+1);
    }
}