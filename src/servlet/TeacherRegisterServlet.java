package servlet;

import bean.Student;
import bean.Teacher;
import dao.TeacherDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class TeacherRegisterServlet extends HttpServlet {
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Teacher teacher = new Teacher();
        teacher.setNick(request.getParameter("nick"));
        teacher.setPassword(request.getParameter("password"));
        teacher.setName(request.getParameter("name"));
        teacher.setSex(request.getParameter("sex"));
        teacher.setAge(Integer.parseInt(request.getParameter("age")));
        teacher.setGrade(request.getParameter("grade"));
        teacher.setStudentID(request.getParameter("studentID"));
        teacher.setTele(request.getParameter("tele"));
        teacher.setSubjects(request.getParameter("subjects"));
        teacher.setSalary(Float.parseFloat(request.getParameter("salary")));
        Date date = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        teacher.setReleaseDate(sdf.format(date));
        teacher.setDemo(request.getParameter("demo"));

        new TeacherDaoImpl().insert(teacher);
        response.sendRedirect("/login.jsp");

    }
}
