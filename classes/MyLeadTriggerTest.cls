@isTest
public class MyLeadTriggerTest {
	
	public static testMethod void testTrigger() {
	
	Lead testLeadTrigger = new Lead();
	testLeadTrigger.LastName = 'DTTLN';
	testLeadTrigger.Company = 'DTTC';
	testLeadTrigger.FirstName = 'DTTFN';
	
	insert testLeadTrigger;
	
	Lead retLead = [ SELECT FirstName from Lead where Company='DTTC'];
	System.assert(retLead.FirstName == 'HelloDTTFN');
	
	}
}