package servlet;

import bean.Student;
import dao.StudentDAO;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class StudentListServlet extends HttpServlet {
    protected void service(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException{

        List<Student> students = new StudentDAO().ListStudent();

        request.setAttribute("students", students);

        request.getRequestDispatcher("listStudent.jsp").forward(request, response);

    }

}
