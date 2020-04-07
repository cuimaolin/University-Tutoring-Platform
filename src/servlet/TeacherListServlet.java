package servlet;

import bean.Teacher;
import dao.TeacherDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class TeacherListServlet extends HttpServlet {
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("utf-8");

        List<Teacher> teachers = new TeacherDaoImpl().listUser();

        request.setAttribute("teachers", teachers);

        request.getRequestDispatcher("listTeacher.jsp").forward(request, response);
    }
}
