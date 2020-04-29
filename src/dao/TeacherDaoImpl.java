package dao;

import bean.Teacher;
import util.DBUtil;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class TeacherDaoImpl implements UserDao<Teacher> {

    @Override
    public List<Teacher> listUser(String sql) {
        List<Teacher> teachers = new ArrayList<Teacher>();

        try{
            Connection c = DBUtil.getConnection();              //获得JDBC连接

            PreparedStatement ps = c.prepareStatement(sql);     //传入sql语句

            ResultSet rs = ps.executeQuery();                   //执行查询

            while (rs.next()) {
                /**
                 * 根据查询的结果得到teacher列表
                 */
                Teacher teacher = new Teacher();

                teacher.setId(rs.getInt("id"));
                teacher.setNick(rs.getString("nick"));
                teacher.setPassword(rs.getString("password"));
                teacher.setName((rs.getString("name")));
                teacher.setSex(rs.getString("sex"));
                teacher.setAge(rs.getInt("age"));
                teacher.setStudentID(rs.getString("studentID"));
                teacher.setGrade(rs.getString("grade"));
                teacher.setTele(rs.getString("tele"));
                teacher.setSubjects(rs.getString("subjects"));
                teacher.setSalary(rs.getFloat("salary"));
                teacher.setReleaseDate(rs.getString("releaseDate"));
                teacher.setDemo(rs.getString("demo"));

                teachers.add(teacher);
            }

            ps.close();

            c.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return teachers;
    }

    @Override
    public Teacher getUser(String nick, String password) {
        Teacher result = null;
        try {
            Connection c = DBUtil.getConnection();      //得到JDBC连接

            String sql = "select * from teacher where nick = ? and password = ?";       //定义sql语句

            PreparedStatement ps = c.prepareStatement(sql);     //传入sql语句

            ps.setString(1, nick);              //补充sql语句中的占位符
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();

            if (rs.next()){
                /**
                 * 得到查询结果，并得到teacher对象
                 */
                result = new Teacher();

                result.setId(rs.getInt("id"));
                result.setNick(rs.getString("nick"));
                result.setPassword(rs.getString("password"));
                result.setName((rs.getString("name")));
                result.setSex(rs.getString("sex"));
                result.setAge(rs.getInt("age"));
                result.setStudentID(rs.getString("studentID"));
                result.setGrade(rs.getString("grade"));
                result.setTele(rs.getString("tele"));
                result.setSubjects(rs.getString("subjects"));
                result.setSalary(rs.getFloat("salary"));
                result.setReleaseDate(rs.getString("releaseDate"));
                result.setDemo(rs.getString("demo"));
            }

            ps.close();

            c.close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return result;
    }

    @Override
    public void insert(Teacher teacher){
        try {
            Connection c = DBUtil.getConnection();          //获得JDBC连接

            String sql = "insert into teacher(nick, password, name, sex, age, studentID, tele, grade, subjects, " +
                    "salary, releaseDate, demo) value(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";     //定义sql语句

            PreparedStatement ps = c.prepareStatement(sql);         //传入sql语句
            /**
             * 补充sql语句中的占位符
             */
            ps.setString(1, teacher.getNick());
            ps.setString(2, teacher.getPassword());
            ps.setString(3, teacher.getName());
            ps.setString(4, teacher.getSex());
            ps.setInt(5, teacher.getAge());
            ps.setString(6, teacher.getStudentID());
            ps.setString(7, teacher.getTele());
            ps.setString(8, teacher.getGrade());
            ps.setString(9, teacher.getSubjects());
            ps.setFloat(10, teacher.getSalary());
            ps.setString(11, teacher.getReleaseDate());
            ps.setString(12, teacher.getDemo());

            ps.executeUpdate();     //执行insert

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
