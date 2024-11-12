public class ContactManager {

    // Method to create a Contact
    public static Contact createContact(String firstName, String lastName, String email) {
        Contact newContact = new Contact(
            FirstName = firstName,
            LastName = lastName,
            Email = email
        );
        insert newContact;
        return newContact;
    }

    // Method to retrieve a Contact by email
    public static Contact getContactByEmail(String email) {
        Contact contact = [SELECT Id, FirstName, LastName, Email FROM Contact WHERE Email = :email LIMIT 1];
        return contact;
    }
}