package servlet;

import bean.Student;
import dao.StudentDaoImpl;
import dao.TeacherDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class StudentRegisterServlet extends HttpServlet {
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        /**
         * 利用页面传入属性定义一个student对象
         */
        Student student = new Student();
        student.setNick(request.getParameter("nick"));
        student.setPassword(request.getParameter("password"));
        student.setName(request.getParameter("name"));
        student.setSex(request.getParameter("sex"));
        student.setAge(Integer.parseInt(request.getParameter("age")));
        student.setGrade(request.getParameter("grade"));
        student.setAddress(request.getParameter("address"));
        student.setTele(request.getParameter("tele"));
        student.setSubjects(request.getParameter("subjects"));
        student.setSalary(Float.parseFloat(request.getParameter("salary")));
        Date date = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        student.setReleaseDate(sdf.format(date));
        student.setDemo(request.getParameter("demo"));

        /**
         * 插入student对象并重定位到登录界面
         */
        new StudentDaoImpl().insert(student);
        response.sendRedirect("/login.jsp");
    }
}
