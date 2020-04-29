package dao;

import bean.Student;
import util.DBUtil;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class StudentDaoImpl implements UserDao<Student>{

    @Override
    public List<Student> listUser(String sql) {

        List<Student> students = new ArrayList<Student>();
        try{
            Connection c = DBUtil.getConnection();      //获得JDBC连接

            PreparedStatement ps = c.prepareStatement(sql);     //传入sql语句

            ResultSet rs = ps.executeQuery();           //进行查询

            while (rs.next()) {
                /**
                 * 根据查询的结果得到student列表
                 */
                Student student = new Student();

                student.setId(rs.getInt("id"));
                student.setNick(rs.getString("nick"));
                student.setPassword(rs.getString("password"));
                student.setName(rs.getString("name"));
                student.setSex(rs.getString("sex"));
                student.setAge(rs.getInt("age"));
                student.setAddress(rs.getString("address"));
                student.setTele(rs.getString("tele"));
                student.setGrade(rs.getString("grade"));
                student.setSubjects(rs.getString("subjects"));
                student.setSalary(rs.getFloat("salary"));
                student.setReleaseDate(rs.getString("releaseDate"));
                student.setDemo(rs.getString("demo"));

                students.add(student);

            }

            ps.close();

            c.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return students;
    }

    @Override
    public Student getUser(String nick, String password) {
        Student result = null;
        try {
            Connection c = DBUtil.getConnection();      //获得JDBC连接

            String sql = "select * from student where nick = ? and password = ?";       //定义sql语句

            PreparedStatement ps = c.prepareStatement(sql);     //传入sql语句

            ps.setString(1, nick);              //补充sql语句中的占位符
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();                   //执行查询

            if (rs.next()){
                /**
                 * 得到查询结果，并得到student对象
                 */
                result = new Student();
                result.setId(rs.getInt("id"));
                result.setNick(rs.getString("nick"));
                result.setPassword(rs.getString("password"));
                result.setName((rs.getString("name")));
                result.setSex(rs.getString("sex"));
                result.setAge(rs.getInt("age"));
                result.setGrade(rs.getString("grade"));
                result.setAddress(rs.getString("address"));
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
    public void insert(Student student){
        try {
            Connection c = DBUtil.getConnection();          //获得JDBC连接

            String sql = "insert into student(nick, password, name, sex, age, grade, address, tele, subjects, " +
                    "salary, releaseDate, demo) value(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";     //定义sql语句

            PreparedStatement ps = c.prepareStatement(sql);             //传入sql语句
            /**
             * 补充sql语句中的占位符
             */
            ps.setString(1, student.getNick());
            ps.setString(2, student.getPassword());
            ps.setString(3, student.getName());
            ps.setString(4, student.getSex());
            ps.setInt(5, student.getAge());
            ps.setString(6, student.getGrade());
            ps.setString(7, student.getAddress());
            ps.setString(8, student.getTele());
            ps.setString(9, student.getSubjects());
            ps.setFloat(10, student.getSalary());
            ps.setString(11, student.getReleaseDate());
            ps.setString(12, student.getDemo());

            ps.executeUpdate();     //执行insert

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
