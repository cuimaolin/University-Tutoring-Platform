package servlet;

import bean.Student;
import dao.StudentDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class StudentRegisterServlet extends HttpServlet {
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String name = request.getParameter("name");
        String password = request.getParameter("password");
        String subject = request.getParameter("subject");
        String number = request.getParameter("number");
        String piece_str = request.getParameter("piece");
        float piece = Float.parseFloat(piece_str);

        Student student = new Student();
        student.setName(name);
        student.setPassword(password);
        student.setSubject(subject);
        student.setNumber(number);
        student.setPiece(piece);
        new StudentDaoImpl().insert(student);
        response.sendRedirect("/login.jsp");
    }
}
