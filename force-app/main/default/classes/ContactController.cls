public with sharing class ContactController {
    @AuraEnabled(cacheable=true)
    public static List <Contact> getContacts(){
        return [SELECT Name, Email FROM Contact LIMIT 5];
    }
}