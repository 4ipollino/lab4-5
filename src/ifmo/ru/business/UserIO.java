package ifmo.ru.business;

import java.io.*;
import java.util.ArrayList;
import java.util.StringTokenizer;

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

    public static ArrayList<User> getUsers(String filepath) {
        ArrayList<User> products = new ArrayList<>();
        File file = new File(filepath);
        try {
            BufferedReader in = new BufferedReader(new FileReader(file));

            String line = in.readLine();
            while (line != null) {
                StringTokenizer t = new StringTokenizer(line, "|");
                String firstName = t.nextToken();
                String lastName = t.nextToken();
                String emailAddress = t.nextToken();
                User p = new User();
                p.setFirstName(firstName);
                p.setLastName(lastName);
                p.setEmailAddress(emailAddress);
                products.add(p);
                line = in.readLine();
            }
            in.close();
            return products;
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }
}