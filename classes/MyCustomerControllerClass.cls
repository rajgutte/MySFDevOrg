public with sharing class MyCustomerControllerClass {
	
	Public Account account {get;set;}
	Public boolean isNew;
	
	public MyCustomerControllerClass() {
		if ( ApexPages.currentPage().getParameters().get('id') == NULL )
		{ 
			isNew = true;
			account = new Account();
		}
		else
		{
			isNew = false;
		}
		
		if ( isNew == false )
		{
			account = [ select id, name, industry from Account 
							where id = :ApexPages.currentPage().getParameters().get('id')];
		}
	}
	 
	public PageReference save() {
		if ( isNew == true )
			insert account;
		else
			update account;
		return null;
	}

}