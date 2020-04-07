package dao;

import bean.Teacher;
import util.DBUtil;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class TeacherDaoImpl implements UserDao<Teacher> {

    @Override
    public List<Teacher> listUser() {
        List<Teacher> teachers = new ArrayList<Teacher>();

        try{
            Connection c = DBUtil.getConnection();

            String sql = "select * from teacher order by id desc";

            PreparedStatement ps = c.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Teacher teacher = new Teacher();
                int id = rs.getInt(2);
                String name = rs.getString(1);
                String subject = rs.getString(3);
                String number = rs.getString(4);
                float price = rs.getFloat(5);
                String password = rs.getString(6);

                teacher.setId(id);
                teacher.setName(name);
                teacher.setNumber(number);
                teacher.setSubject(subject);
                teacher.setPiece(price);
                teacher.setPassword(password);
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
    public Teacher getUser(String name, String password) {
        Teacher result = null;
        try {
            Connection c = DBUtil.getConnection();

            String sql = "select * from teacher where name = ? and password = ?";

            PreparedStatement ps = c.prepareStatement(sql);

            ps.setString(1, name);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();

            if (rs.next()){
                result = new Teacher();
                int id = rs.getInt(2);
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

    @Override
    public void insert(Teacher teacher){
        try {
            Connection c = DBUtil.getConnection();

            String sql = "insert into teacher(name, subject, number, piece, password) value(?, ?, ?, ?, ?)";

            PreparedStatement ps = c.prepareStatement(sql);
            ps.setString(1, teacher.getName());
            ps.setString(2, teacher.getSubject());
            ps.setString(3, teacher.getNumber());
            ps.setFloat(4, teacher.getPiece());
            ps.setString(5,teacher.getPassword());

            ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
