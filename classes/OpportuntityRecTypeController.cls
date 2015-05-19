public with sharing class OpportuntityRecTypeController {

    public string strRecordType         {get;set;}
    public final Opportunity opp        {get;set;} 
    
    public OpportuntityRecTypeController() {
       opp = new Opportunity();
    }
    
    //Create our list of record types
    public list<SelectOption> getRecordTypes()
    {
    list<SelectOption> options = new list<SelectOption>();

    for(RecordType sRecordType : [SELECT Id, Name FROM RecordType WHERE sObjectType = 'Opportunity'])
    {
        // Select options are added with key,value pairing
        options.add(new SelectOption(sRecordType.Id, sRecordType.Name));
    }
    return options;
    }
    
    public void updateRecordType()
    {
    Opp.RecordTypeId = strRecordType;
    }
    
}