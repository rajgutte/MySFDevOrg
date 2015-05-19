@isTest
public class AESCustomerControllerTest {
	
	public static testMethod void testExtension() {
		
		Account acc = new Account ( name = 'TestClassAccount');
		insert acc;
		
		List<Contact> conList = new List<Contact>();
		Contact con1 = new Contact(FirstName='f1', LastName='l1', AccountId = acc.Id, Email='e1@e.com');
		conList.add(con1);
		Contact con2 = new Contact(FirstName='f2', LastName='l2', AccountId = acc.Id, Email='e2@e2.com');
		conList.add(con2);
		
		insert conList;
		
		AESCustomController ActTest = new AESCustomController(null);
		ActTest.email = 'e1@e.com';
		ActTest.searchContact();
		System.assert(ActTest.conList.size() == 1); 
	}

}