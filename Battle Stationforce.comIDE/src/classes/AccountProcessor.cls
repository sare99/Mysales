public class AccountProcessor {
 @future
  public static void countContacts(Set<id> setId) {
    List<Account> istaccount = [select id,Number_of_Contacts__c , (select id from contacts ) from account where id in :setId ];
 
     for( Account acc : istAccount )
      {
          List<Contact> istCont = acc.contacts ;
         
          acc.Number_of_Contacts__c = istCont.size();
      }
      update istAccount;
  }
}