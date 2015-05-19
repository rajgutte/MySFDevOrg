public with sharing class CustomerChangeOwnerApexClass {

    private final List<Relationship__c> relShips;
   
    public CustomerChangeOwnerApexClass(ApexPages.StandardSetController controller) {
        this.relShips=(List<Relationship__c>)controller.getSelected();
        for ( Relationship__c tempRel : this.relShips )
        {
            System.debug('Record Selected' + tempRel );
        }
    }
    
    public CustomerChangeOwnerApexClass(ApexPages.StandardController controller) {
    }
   
    public PageReference save() {    
       update relShips;
       PageReference pageRef = new PageReference(ApexPages.currentPage().getParameters().get('retURL'));
       return pageRef;
   }
   
   public PageReference yourMethod() {
       return null;
   }
}