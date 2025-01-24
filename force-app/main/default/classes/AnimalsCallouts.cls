public class AnimalsCallouts {
    // Method untuk melakukan GET callout
    public static HttpResponse makeGetCallout() {
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
        request.setMethod('GET');
        
        HttpResponse response = http.send(request);

        if (response.getStatusCode() == 200) {
            // Debug response body
            System.debug('Response Body: ' + response.getBody());
            
            // Deserialize JSON response
            Map<String, Object> results = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());
            System.debug('Results: ' + results);
            
            // Ambil daftar animals dari response
            List<Object> animals = (List<Object>) results.get('animals');
            System.debug('Animals: ' + animals);

            // Debug daftar animals
            System.debug('Received the following animals:');
            for (Object animal : animals) {
                System.debug(animal);
            }
        } else {
            System.debug('GET callout failed with status code: ' + response.getStatusCode());
        }

        return response;
    }

    // Method untuk melakukan POST callout
    public static HttpResponse makePostCallout() {
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
        request.setMethod('POST');
        request.setHeader('Content-Type', 'application/json;charset=UTF-8');
        request.setBody('{"name":"kumcing"}');
        
        HttpResponse response = http.send(request);

        if (response.getStatusCode() != 201) {
            System.debug('POST callout failed with status code: ' + 
                response.getStatusCode() + ' ' + response.getStatus());
        } else {
            System.debug('Response Body: ' + response.getBody());
        }

        return response;
    }
}