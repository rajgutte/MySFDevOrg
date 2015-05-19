@isTest
private class MyTriggerClassTestClass {
    static testMethod void validateMyTriggerClass() {
        
        Book__c book = new Book__c(Name='Behind the cloud', Price__c=100); 
        System.debug('Price before inserting new book = ' + book.Price__c );
        
        //Insert Book
        insert book;
        
        //Retrieve the new book
        book = [SELECT Price__c from Book__c where Id=:book.Id];
        System.debug('Price after the trigger is fired = ' + book.Price__c);
        
        //Test whether trigger updated the price appropriately
        System.assertEquals(90, book.Price__c);
    }
}