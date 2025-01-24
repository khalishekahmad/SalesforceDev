public class AccountHandler {
    // Fungsi untuk menentukan kategori
    public static void assignCategory(List<Account> accounts) {
        for (Account acc : accounts) {
            if (acc.NumberOfEmployees < 50) {
                acc.Category__c = 'Small Business';
            } else if (acc.NumberOfEmployees <= 200) {
                acc.Category__c = 'Medium Business';
            } else {
                acc.Category__c = 'Enterprise';
            }
        }
    }

    // Fungsi untuk menghitung revenue per employee
    public static void calculateRevenuePerEmployee(List<Account> accounts) {
        for (Account acc : accounts) {
            if (acc.AnnualRevenue != null && acc.NumberOfEmployees > 0) {
                acc.Revenue_Per_Employee__c = acc.AnnualRevenue / acc.NumberOfEmployees;
            }
        }
    }
}