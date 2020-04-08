package servlet;

import bean.Teacher;
import dao.TeacherDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class TeacherRegisterServlet extends HttpServlet {
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String name = request.getParameter("name");
        String password = request.getParameter("password");
        String subject = request.getParameter("subject");
        String number = request.getParameter("number");
        String piece_str = request.getParameter("piece");
        float piece = Float.parseFloat(piece_str);

        Teacher teacher = new Teacher();
        teacher.setName(name);
        teacher.setPassword(password);
        teacher.setSubject(subject);
        teacher.setNumber(number);
        teacher.setPiece(piece);
        new TeacherDaoImpl().insert(teacher);
        response.sendRedirect("/login.jsp");

    }
}
