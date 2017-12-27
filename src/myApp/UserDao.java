package myApp;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class UserDao {
	public void insertUser(User user) {
		// 用户注册方法
		Dbmanage dbmanage = new Dbmanage();
		Connection conn = null;
		Statement sta = null;

		try {
			conn = dbmanage.initDB();
			sta = conn.createStatement();
			String sql = "INSERT INTO usertable (user_email,user_name,user_password)VALUES('"
					+ user.getEmail()
					+ "','"
					+ user.getUserName()
					+ "','"
					+ user.getPassword()
					+ "')";
			sta.executeUpdate(sql);
			System.out.println("Insert success!");
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			// 执行完关闭数据库
			dbmanage.closeDB(sta, conn);
		}
	}
	public Boolean checkUser(String email,String password) {
		Dbmanage dbmanage = new Dbmanage();
		Connection conn = null;
		Statement sta = null;
		try {
			conn = dbmanage.initDB();
			sta = conn.createStatement();        
			//            String sql = "select user_password from usertable where user_email = "+email+";";
			String sql = "select user_password from usertable where user_email = '" + email+"'";
			//            System.out.println(sql);
			ResultSet rs = sta.executeQuery(sql);

			if(rs.next()){

				String pwd = rs.getString(1);
//				System.out.println(pwd);
//				System.out.println(password);
//				System.out.println(pwd.equals(password));
				if(pwd.equals(password)) {
					return true;
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			// 执行完关闭数据库
			dbmanage.closeDB(sta, conn);
		}
		return false;
	}
	public ArrayList<User> getAllUsers() {
		ArrayList<User> list = new ArrayList<User>(); 
//		System.out.println("abc");
		Dbmanage dbmanage = new Dbmanage();
		Connection conn = null;
		Statement sta = null;
		try {
			conn = dbmanage.initDB();
			sta = conn.createStatement();
			String sql = "select * from usertable";
			ResultSet rs = sta.executeQuery(sql);
//			System.out.println(rs);
			while (rs.next()) {
				String user_email = rs.getString(1);  
				String user_name = rs.getString(2);
				String user_password = rs.getString(3);
				User user = new User(user_email,user_name,user_password);  
				list.add(user);
			} 
		}catch (SQLException e) {
			e.printStackTrace();
		} finally {
			// 执行完关闭数据库
			dbmanage.closeDB(sta, conn);
		}  
		return list;
	}
}
