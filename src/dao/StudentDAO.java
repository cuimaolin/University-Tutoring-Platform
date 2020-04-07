package dao;

import bean.Student;
import bean.Teacher;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class StudentDAO {

    public List<Student> ListStudent(){
        List<Student> students = new ArrayList<Student>();
        try{
            Connection c = dao.JDBCTools.getConnection();

            String sql = "select * from student order by id desc";

            PreparedStatement ps = c.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Student student = new Student();
                int id = rs.getInt(1);
                String name = rs.getString(2);
                String subject = rs.getString(3);
                String number = rs.getString(4);
                float price = rs.getFloat(5);
                String password = rs.getString(6);

                student.setId(id);
                student.setName(name);
                student.setNumber(number);
                student.setSubject(subject);
                student.setPiece(price);
                student.setPassword(password);
                students.add(student);
            }

            ps.close();

            c.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return students;
    }

    public Student getStudent(String name, String password){
        Student result = null;
        try {
            Connection c = dao.JDBCTools.getConnection();

            String sql = "select * from student where name = ? and password = ?";

            PreparedStatement ps = c.prepareStatement(sql);

            ps.setString(1, name);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();

            if (rs.next()){
                result = new Student();
                int id = rs.getInt(1);
                String subject = rs.getString(3);
                String number = rs.getString(4);
                float price = rs.getFloat(5);

                result.setId(id);
                result.setNumber(number);
                result.setSubject(subject);
                result.setPiece(price);
                result.setName(name);
                result.setPassword(password);
            }

            ps.close();

            c.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }
    public void insert(Student student){
        try {
            Connection c = dao.JDBCTools.getConnection();

            String sql = "insert into student(name, subject, number, piece, password) value(?, ?, ?, ?, ?)";

            PreparedStatement ps = c.prepareStatement(sql);
            ps.setString(1, student.getName());
            ps.setString(2, student.getSubject());
            ps.setString(3, student.getNumber());
            ps.setFloat(4, student.getPiece());
            ps.setString(5, student.getPassword());

            ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
