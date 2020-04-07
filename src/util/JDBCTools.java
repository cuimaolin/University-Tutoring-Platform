package dao;

import java.io.IOException;
import java.io.InputStream;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

import com.mysql.jdbc.Connection;

/**
 * ����JDBC�Ĺ����࣬���з�װһЩ���߷���
 * 
 * @author asus
 *
 */
public class JDBCTools {
	/**
	 * 	ִ��SQL��䣬ʹ��PreparedStatement
	 * @param sql
	 * @param args	:��дSQLռλ���Ŀɱ����
	 */
	public static void update(String sql,Object ...args){
		Connection connection =null;
		PreparedStatement preparedstatement = null;
		try{
			connection = JDBCTools.getConnection();
			preparedstatement = connection.prepareStatement(sql);
			for(int i=0; i<args.length;i++){
				 	preparedstatement.setObject(i+1, args[i]);
			}
			preparedstatement.executeUpdate();
			
		}catch(Exception e){
			e.printStackTrace();
		}finally {
			JDBCTools.release(preparedstatement, connection);
		}
	}
	/*
	 * ִ��SQL�ķ���
	 * ͨ�õĸ��µķ���������INSERT��UPDATE��DELETE ��������SELECT
	 */
	public void update(String sql) {

		Connection conn = null;
		Statement statement = null;
		try {
			// 1. ��ȡConnection
			conn = JDBCTools.getConnection();
//			System.out.println(conn);

			// 2. ��ȡStatement
			statement = conn.createStatement();
//			System.out.println(statement);

			// 3.����SQL��䣬����Statement�����executeUpdate(sql)�����������ݿⷢ��SQL���
			statement.executeQuery(sql);
		
		} catch (Exception e) {
			// TODO: handle exception
		} finally {
			// 6. �ر����ݿ���Դ
			JDBCTools.release(statement, conn);
		}

	}
	public static void release(ResultSet rs,Statement statement, java.sql.Connection connection) {
		if(rs!=null){
			try {
				rs.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if (statement != null) {
			try {
				statement.close();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if (connection != null) {
			try {
				connection.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
	}
	public static void release(Statement statement, Connection conn) {
		if (statement != null) {
			try {
				statement.close();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if (conn != null) {
			try {
				conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
	}
	public static void release(ResultSet rs,PreparedStatement statement, Connection conn) {
		if(rs!=null){
			try {
				rs.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if (statement != null) {
			try {
				statement.close();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if (conn != null) {
			try {
				conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
	}

	/**
	 * 1. ��ȡ���ӵķ����� ͨ����ȡ�����ļ������ݿ��������ȡһ������
	 * 
	 * @return
	 * @throws IOException
	 * @throws ClassNotFoundException
	 * @throws SQLException
	 */
	// ȱ����ǣ�ÿ�������������Ҫ���Ǹ������ļ�
	public static Connection getConnection() throws Exception {
		// 1. ׼���������ݿ��4���ַ���
		// (1). ����Properties����
		Properties properties = new Properties();
		// (2). ��ȡjdbc.properties ��Ӧ��������
		InputStream in = JDBCTools.class.getClassLoader().getResourceAsStream("util/jdbc.properties");
		// (3). ���أ�2����Ӧ��������
		properties.load(in);
		// (4). Ϊ�������user��password��4���ַ�����
		String user = properties.getProperty("user");
		String password = properties.getProperty("password");
		String jdbcUrl = properties.getProperty("jdbcUrl");
		String driver = properties.getProperty("driver");

		// 2. �������ݿ��������򣨶�Ӧ��Driver ʵ��������ע�������ľ�̬����飩��
		Class.forName(driver);
		// 3. ͨ��DriverManager ��getConnection()������ȡ���ݿ����ӡ�
		return (Connection) DriverManager.getConnection(jdbcUrl, user, password);
	}
}
