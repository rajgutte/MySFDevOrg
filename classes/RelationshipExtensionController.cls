public without sharing class RelationshipExtensionController {
    
    Relationship__c relObj;

    public RelationshipExtensionController(ApexPages.StandardSetController controller){
        relObj = (Relationship__c)controller.getRecord();   
    }

    public PageReference save(){
        AMLGlobal AmlGlobalObj = new AMLGlobal();
        AmlGlobalObj.setRelationshipObj(relObj);
        
        return null;
    }
}