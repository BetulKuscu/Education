public class MyClass1 {
     
    //Rastgele bir harf ureten bir fonksiyon olusturunuz 
    public static String rastgeleBirHarfVer(){        
        String alfabe =  'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz';
        Integer maxIndex = alfabe.length()-1;
        Integer rastgeleIndex = Integer.valueOf(Math.random()*maxIndex);
        return alfabe.substring(rastgeleIndex, rastgeleIndex+1);       
    }  
}