public class RelationshipSearchController 
{
 public String nameQuery {get; set;}
 public List<Relationship__c> relationships {get; set;}
 public boolean checkBox {get; set;}
  
 public PageReference executeSearch()
 {
  String queryStr='%' + nameQuery + '%';
  relationships=[select id, Name, Primary_Relationship_Contact__c 
            from Relationship__c
            where name like :queryStr];
            
  return null;
 }
 
public void selectRel(){
    String selRelId = System.currentPagereference().getParameters().get('relId');
    System.debug('Selected Relationship - ' + selRelId);
}

 public PageReference addRelationships()
 {       
   return null;  
 }
  
 public RelationshipSearchController()
 {
  String urlQuery=ApexPages.currentPage().getParameters().get('query');
   
  if ( (null!=urlQuery) && (0!=urlQuery.length()) )
  {
   nameQuery=urlQuery;
   executeSearch();
  }
 }
}