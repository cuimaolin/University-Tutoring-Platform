package servlet;

import bean.Student;
import bean.Teacher;
import dao.StudentDaoImpl;
import dao.TeacherDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class LoginServlet extends HttpServlet {
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        String name = request.getParameter("name");
        String password = request.getParameter("password");
        Teacher teacher = new TeacherDaoImpl().getUser(name, password);
        Student student = new StudentDaoImpl().getUser(name, password);
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
