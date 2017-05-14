package ifmo.ru.business;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by chip0llino on 14.05.17.
 *
 * Output user info to file
 */
public class UserIO {
    public static void add(User user, String filepath) throws IOException
    {
        File file = new File(filepath);
        PrintWriter out = new PrintWriter(new FileWriter(file, true));
        out.println(user.getEmailAddress() + "| " + user.getFirstName() + "|"
                + user.getLastName());
        out.close();
    }
}