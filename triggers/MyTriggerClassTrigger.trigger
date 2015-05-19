trigger MyTriggerClassTrigger on Book__c (before insert) {

    Book__c[] books = Trigger.new;
    MyTriggerClass.applyDiscount(books);
}