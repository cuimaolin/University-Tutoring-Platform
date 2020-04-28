package dao;

import util.DBUtil;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

public interface UserDao<T> {

    /**
     * 得到数据库中的所有user
     * @return
     */
    List<T> listUser(String sql);

    /**
     * 得到账号为name，密码为password的user
     * @param name
     * @param password
     * @return
     */
    T getUser(String name, String password);

    /**
     * 向数据库中插入一个user
     * @param user
     */
    void insert(T user);

}
