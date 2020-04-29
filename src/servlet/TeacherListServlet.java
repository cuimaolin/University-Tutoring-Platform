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

        /**
         * 得到页面返回的查询内容
         */
        String grade_ = request.getParameter("grade");
        String subject_ = request.getParameter("subjects");
        String price_min = request.getParameter("price_min");
        String price_max = request.getParameter("price_max");
        /**
         * 定义用于查询的sql语句
         */
        String sql = "select * from teacher";
        if (grade_ != null)
            sql += " where grade like '%" + grade_ + "%'";
        if (subject_ != null)
            sql += " and subjects like '%" + subject_+ "%'";
        if (price_min != null)
            sql += " and salary between " + price_min + " and " + price_max;

        List<Teacher> teachers = new TeacherDaoImpl().listUser(sql);    //根据sql返回teacher列表

        /**
         * 向页面返回teacher列表并执行重定位
         */
        request.setAttribute("teachers", teachers);
        request.getRequestDispatcher("listTeacher.jsp").forward(request, response);
    }
}
