@isTest
public class AccountHandlerTest {
    @isTest
    static void testAccountTrigger() {
        // Buat data Account untuk pengujian
        Account acc = new Account(Name = 'Test Account', NumberOfEmployees = 100, AnnualRevenue = 1000000);
        insert acc;

        // Verifikasi hasil
        Account result = [SELECT Category__c, Revenue_Per_Employee__c FROM Account WHERE Id = :acc.Id];
        System.assertEquals('Medium Business', result.Category__c);
        System.assertEquals(10000, result.Revenue_Per_Employee__c);
    }
}