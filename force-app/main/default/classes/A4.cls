public class A4 implements Motor,Klima, Fren {

    public void eco(){
            System.debug('A4 ekonomik motor kullanir.');
        }
   public void turbo(){
        System.debug('Torbo motor kullanir.');
    }
    
    public void gas(){
        System.debug('Sadece benzinli motor kullanir.');
    }
    public void mevsimsel(){
        System.debug('Mevsimsel klima kullanir.');
    }
    public void digital(){
        System.debug('Digital klima kullanir.');
    }
    public void abs(){
        System.debug('Abs fren sistemi kullanir.');
    }
    public void secure(){
        System.debug('Secure fren sistemi kullanir.');
    }
}