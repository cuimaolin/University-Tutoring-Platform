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
import java.util.List;

public class TeacherListServlet extends HttpServlet {
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        List<Teacher> teachers = new TeacherDAO().ListTeacher();

        request.setAttribute("teachers", teachers);

        request.getRequestDispatcher("listTeacher.jsp").forward(request, response);
    }
}
