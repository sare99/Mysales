@istest
public class AccountProcessorTest {
public void TestAccountProcessor()
{
    Account acc=new Account();
    acc.Name='Test Account';
    insert acc;
 Contact ct= new Contact();
 ct.FirstName='Bob';
 ct.LastName='meer';
 ct.AccountId=acc.id;
 insert ct;
 set<id> acctid=new Set<Id>();
 acctid.add(acc.id);
 Test.startTest();
    AccountProcessor.countContacts(acctid);
    Test.stopTest();
    Account a=[select Number_of_contacts__C from Account where id=:acc.id Limit 1];
    System.assertEquals(Integer.valueOf(a.Number_of_contacts__C),1);
        }

}