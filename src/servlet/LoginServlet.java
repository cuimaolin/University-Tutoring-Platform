package servlet;

import bean.Student;
import bean.Teacher;
import dao.StudentDAO;
import dao.TeacherDAO;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class LoginServlet extends HttpServlet {
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String password = request.getParameter("password");
        Teacher teacher = new TeacherDAO().getTeacher(name, password);
        Student student = new StudentDAO().getStudent(name, password);
        if (null != teacher){
            request.getSession().setAttribute("teacher", teacher);
            response.sendRedirect("/listStudent");
        } else if (null != student){
            request.getSession().setAttribute("student", student);
            response.sendRedirect("/listTeacher");
        } else {
            response.sendRedirect("/login.jsp");
        }
    }
}
