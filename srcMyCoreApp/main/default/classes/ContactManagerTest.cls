@isTest
public class ContactManagerTest {

    // Test for the createContact method
    @isTest static void testCreateContact() {
        Contact contact = ContactManager.createContact('John', 'Doe', 'john.doe@example.com');
        
        // Verify that the Contact record was created successfully
        System.assertNotEquals(null, contact.Id, 'Contact creation failed');
        System.assertEquals('John', contact.FirstName, 'First name is incorrect');
        System.assertEquals('Doe', contact.LastName, 'Last name is incorrect');
        System.assertEquals('john.doe@example.com', contact.Email, 'Email is incorrect');
    }

    // Test for the getContactByEmail method
    @isTest static void testGetContactByEmail() {
        // First, create a Contact to retrieve
        Contact contact = new Contact(FirstName = 'Jane', LastName = 'Smith', Email = 'jane.smith@example.com');
        insert contact;
        
        // Retrieve the contact by email
        Contact retrievedContact = ContactManager.getContactByEmail('jane.smith@example.com');
        
        // Verify that the retrieved Contact matches the created one
        System.assertNotEquals(null, retrievedContact, 'Contact retrieval failed');
        System.assertEquals(contact.Id, retrievedContact.Id, 'Contact ID does not match');
        System.assertEquals('Jane', retrievedContact.FirstName, 'First name is incorrect');
        System.assertEquals('Smith', retrievedContact.LastName, 'Last name is incorrect');
        System.assertEquals('jane.smith@example.com', retrievedContact.Email, 'Email is incorrect');
    }
}