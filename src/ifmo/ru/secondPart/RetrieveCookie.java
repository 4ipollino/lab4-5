package ifmo.ru.secondPart;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/RetrieveCookie")
public class RetrieveCookie extends HttpServlet {
    private static final long serialVersionUID = 1L;
    public RetrieveCookie() {
        super();
        // TODO Auto-generated constructor stub
    }

    PrintWriter pw = null;

    public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException
    {
	/* Вызов метода doPost() класса HttpServlet. */
        doPost(req,res);
    }
    /* Переопределение метода doPost() класса HttpServlet, который реализует функциональность сервлета. */
    public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException
    {
	/* Получение экземпляра класса PrintWriter. */
        pw=res.getWriter();
        String username = "";
        String password = "";
	/* Получение cookies, если таковые есть, хранимых в браузере кли-ента. */
        Cookie ck[] = req.getCookies();
        if (ck!=null)
        {
            for (int i=0; i<ck.length; i++)
            {
                if (ck[i].getName().equals("user"))
			/*  Получение имени пользователя из cookie. */
                    username = ck[i].getValue();
                if (ck[i].getName().equals("password"))
                    password = ck[i].getValue();
            }
            pw.println("Hello, " + username + "! Your password is " + password);
        }
        else
        {
            pw.println("No cookies found");
        }

    }
}
