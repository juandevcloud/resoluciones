public with sharing class ContacTriggerHandler {
    public static void VerifyHasIdProcontacto(List<Contact> contacs){
        List<String> idsProcontacto= new List<String>();
        for (Contact a : contacs) {
            if(a.idprocontacto__c != ''){
                idsProcontacto.add(a.idprocontacto__c);
            }
        }
        boolean isFuture = System.isFuture();
        if( isFuture == false){
           setEmailProcontacto(idsProcontacto); 
        }
    }
    @future(callout=true)
    public static void setEmailProcontacto(List<String> idsProcontacto){
        List<Contact> contacsToUpdate = [SELECT Id,Name,idprocontacto__c FROM Contact WHERE idprocontacto__c IN : idsProcontacto];
        for(Contact a :  contacsToUpdate){
            Http http = new Http();
            HttpRequest request = new HttpRequest();
            request.setEndpoint('https://procontacto-reclutamiento-default-rtdb.firebaseio.com/contacts/'+ a.idprocontacto__c+'.json');
            request.setMethod('GET');
            HttpResponse response = http.send(request);
            if(response.getStatusCode() == 200) {
                // Deserializes the JSON string into collections of primitive data types.
                Map<String,Object> results = (Map<String,Object>) JSON.deserializeUntyped(response.getBody());
                // Cast the values
                a.Email = (String)results.get('email');
            }
        }
        try {
            upsert contacsToUpdate;
        } catch (DmlException e) {
            System.debug('A DML exception has occurred: ' +
                         e.getMessage());
        }
    }
}
