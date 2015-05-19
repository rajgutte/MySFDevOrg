public class CampaignRelClassController {

    //Our Search String
    public String searchString {get; set;}
    public String searchStringRelId {get; set;}
    public String searchStringPRA {get; set;}
    public String searchStringActiveFlag {get; set;}

    //Our collection of the class/wrapper objects cRelationship 
    public List<cRelationship> relList {get; set;}

    public List<cRelationship> getRelationships() {
        return relList;
    }

    public void searchRelationship() {
        String modifiedSearchString1 = '%' + searchString + '%';
        String modifiedSearchString2 = '%' + searchStringRelId + '%';
        String modifiedSearchString3 = '%' + searchStringPRA + '%';
        String modifiedSearchString4 = '%' + searchStringActiveFlag + '%';
        if(relList == null) {
            relList = new List<cRelationship>();
            for(Relationship__c r: [select Id, Name, Primary_Relationship_Contact__c from Relationship__c where Name like :modifiedSearchString1 
                                                                                                                and Relationship_Id__c like :modifiedSearchString2
                                                                                                                and Primary_Relationship_Advisor__c like :modifiedSearchString3
                                                                                                                and Active__c like :modifiedSearchString4]) {
                // As each Relationship is processed we create a new cRelationship object and add it to the relList
                relList.add(new cRelationship(r));
            }
        }        
    }

    public PageReference processSelected() {
    
        CampaignRelationship__c cr;
        CampaignMember cm; 

        //We create a new list of Relationships that we be populated only with Relationships if they are selected
        List<Relationship__c> selectedRels = new List<Relationship__c>();

        //We will cycle through our list of cRelationships and will check to see if the selected property is set to true, if it is we add the Contact to the selectedContacts list
        for(cRelationship cRel: getRelationships()) {
            if(cRel.selected == true) {
                selectedRels.add(cRel.rel);
            }
        }

        //Associated Campaign Id
        System.debug('Campaign Id - ' + ApexPages.currentPage().getParameters().get('urlparm'));
        // Now we have our list of selected relationships and can perform any type of logic we want, sending emails, updating a field on the Relationship, etc
        System.debug('These are the selected Relationships...');
        for(Relationship__c rel: selectedRels) {
            system.debug(rel);
            cr = new CampaignRelationship__c(Campaign__c = ApexPages.currentPage().getParameters().get('urlparm'),
                                            Relationship__c = rel.Id);
            insert cr;
            
            cm = new CampaignMember(CampaignId = ApexPages.currentPage().getParameters().get('urlparm'),
                                    ContactId = rel.Primary_Relationship_Contact__c);
            
            insert cm;
        }
        relList=null; // we need this line if we performed a write operation  because getRels gets a fresh list now
        return null;
    }


    // This is our wrapper/container class. A container class is a class, a data structure, or an abstract data type whose instances are collections of other objects. In this example a wrapper class contains both the salesforce object Relationship__c and a Boolean value
    public class cRelationship {
        public Relationship__c rel {get; set;}
        public Boolean selected {get; set;}

        //This is the constructor method. When we create a new cRelationship object we pass a Relationship that is set to the rel property. We also set the selected value to false
        public cRelationship(Relationship__c c) {
            rel = c;
            selected = false;
        }
    }
}