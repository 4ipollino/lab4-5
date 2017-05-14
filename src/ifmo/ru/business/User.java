package ifmo.ru.business;

/**
 * Created by chip0llino on 14.05.17.
 *
 * Class for user information
 */
public class User {
    private String firstName;
    private String lastName;
    private String emailAddress;

    public User() {
        firstName = "";
        lastName = "";
        emailAddress = "";
    }

    public User(String firstName, String lastName, String emailAddress) {
        super();
        this.firstName = firstName;
        this.lastName = lastName;
        this.emailAddress = emailAddress;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getEmailAddress() {
        return emailAddress;
    }

    public void setEmailAddress(String emailAddress) {
        this.emailAddress = emailAddress;
    }
}