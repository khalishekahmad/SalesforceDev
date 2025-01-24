@RestResource(urlMapping='/Cases/*')
global with sharing class CaseManager {
    @HttpDelete
    global static void deleteCase() {
        RestRequest request = RestContext.request;
        // Mengambil Case ID dari URL
        String caseId = request.requestURI.substring(request.requestURI.lastIndexOf('/')+1);
        
        // Query untuk mendapatkan Case berdasarkan ID
        Case thisCase = [SELECT Id FROM Case WHERE Id = :caseId];
        
        // Menghapus Case
        delete thisCase;
    }
}
