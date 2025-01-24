public class CustomAccountController {
    public List <Account> accounts {get; set; }
    
    public CustomAccountController() {
        accounts = [SELECT Name, Industry, AccountNumber, AnnualRevenue, Category__c FROM Account LIMIT 10];
    }
}