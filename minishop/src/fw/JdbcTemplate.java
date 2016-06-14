package fw;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

//��� DBó�� �޼ҵ忡�� �ߺ��Ǵ� ����� ��Ƴ��� Ŭ����
public class JdbcTemplate {
	// ����̹��ε�
	static {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			System.out.println("����̹� �ε� ����");
		}
	}

	public static Connection getConnect() {
		String url = "jdbc:oracle:thin:@127.0.0.1:1521:xe";
		String user = "scott";
		String password = "tiger";
		Connection con = null;
		try {
			con = DriverManager.getConnection(url, user, password);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return con;
	}

	public static void close(ResultSet rs, Statement stmt, Connection con) {
		try {
			if (rs != null)
				rs.close();
			if (stmt != null)
				stmt.close();
			if (con != null)
				con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	//ResultSet��ȯ
	public static void close(ResultSet rs) {
		try {
			if (rs != null)	rs.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	//Statement��ȯ
	public static void close(Statement stmt) {
		try {
			if (stmt != null)	stmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	//Connection��ȯ
	public static void close(Connection con) {
		try {
			if (con != null)	con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}















