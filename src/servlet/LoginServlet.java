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

        String nick = request.getParameter("nick");             //得到用户账号
        String password = request.getParameter("password");     //得到用户密码
        Teacher teacher = new TeacherDaoImpl().getUser(nick, password);     //根据用户账号和密码进行查找
        Student student = new StudentDaoImpl().getUser(nick, password);
        /**
         * 判断用户类型并重定位，若无对应用户则登录失败
         */
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
