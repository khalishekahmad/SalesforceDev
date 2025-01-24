public class HelloWorld {
    public String sayHello() {
        return 'Hello, Salesforce!';
    }
    
    public void showPrivate() {
        contoh privateClass = new contoh(); // Buat instance dari class `contoh`
        String getMethodShowString = privateClass.showString(); // Panggil metode dari `contoh`
        System.debug(getMethodShowString); // Cetak hasilnya di log
    }
}