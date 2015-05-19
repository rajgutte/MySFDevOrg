public class AESCustomController {
	
	Public String email { get; set; }
	Public List<Contact> conList { get; set; }
	Public ApexPages.Standardcontroller stdControllerClassScope;
	
	Public AESCustomController(ApexPages.StandardController stdControllerClassScope) {

	}
	
	Public PageReference searchContact() {
		
	conList = [ select firstName, lastName, email, phone 
					from Contact where email = :email];
	return null;
		
	}

}