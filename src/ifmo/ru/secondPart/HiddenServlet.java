package ifmo.ru.secondPart;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by chip0llino on 13.05.17.
 */
@WebServlet("/HiddenServlet")
public class HiddenServlet extends HttpServlet
{
    private static final long serialVersionUID = 1L;
    public HiddenServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException
    {
/* Вызов метода doPost() класса HttpServlet. */
        doPost(req, res);
    }
    /* Переопределение метода doPost() класса HttpServlet для реализации функциональности сервлета. */
    public void doPost(HttpServletRequest req, HttpServletResponse res) throws
            ServletException, IOException
    {
/* Получение параметров, связанных с пользователем (пароль и регистрационное имя) из объекта запроса */
        String username = req.getParameter("user");
        PrintWriter pw = res.getWriter();
        pw.append("<!DOCTYPE html>\r\n");
        pw.append("<html>\r\n");
        pw.append("<head>\r\n");
        pw.append("</head>\r\n");
        pw.append("<body>\r\n");
        pw.append("<h1>Hello! click Submit to proceed</h1>\r\n");
        pw.append("<form name=\"login\" action=\"http://localhost:8282/lab4/SecondServlet\">\r\n");
/* Добавление скрытого поля */
        pw.append("<input type=\"hidden\" name=\"user\" value=" + username+">\r\n");
        pw.append("<input type=\"Submit\" value=\"Submit\"></form>\r\n");
        pw.append("</body>\r\n");
        pw.append("</html>\r\n");
    }
}
