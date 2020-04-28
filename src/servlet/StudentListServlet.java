package servlet;

import bean.Student;
import dao.StudentDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

public class StudentListServlet extends HttpServlet {
    protected void service(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException{

        String grade_ = request.getParameter("grade");
        String subject_ = request.getParameter("subjects");
        String price_min = request.getParameter("price_min");
        String price_max = request.getParameter("price_max");

        String sql = "select * from student";

        if (grade_ != null)
            sql += " where grade like '%" + grade_ + "%'";
        if (subject_ != null)
            sql += " and subjects like '%" + subject_+ "%'";
        if (price_min != null)
            sql += " and salary between " + price_min + " and " + price_max;

        List<Student> students = new StudentDaoImpl().listUser(sql);

        request.setAttribute("students", students);

        request.getRequestDispatcher("listStudent.jsp").forward(request, response);

    }

}
