package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class PointDao {

    public String findPoint(String user_id) {
        String result = "0";
        Connection con = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            String driver = "com.mysql.jdbc.Driver";
            String url = "jdbc:mysql://127.0.0.1:3306/User?useUnicode=true&characterEncoding=utf8";
            String user = "root";
            String password = "root";//<span style="font-family: Arial, Helvetica, sans-serif;">//改为自己的用户名密码和数据库名</span>
            Class.forName(driver);
            con = DriverManager.getConnection(url, user, password);
            //String sql = "select * from user where username=?";
            String sql = "select * from points where idpoints=?";
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, user_id);
            rs = pstmt.executeQuery();

            if (rs == null) {
                return "0";
            }
            if (rs.next()) {
                result = rs.getString("pointl");
            } else {
                result = "0";
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (pstmt != null) pstmt.close();
                if (con != null) con.close();
            } catch (SQLException e) {
            }
        }
        return result;


    }

    public static void main(String[] args) {
        String ans = new PointDao().findPoint("1");
        System.out.println(ans);
        // UserDao u = new UserDao();
        //u.addUser("1345", "1345");
        //   }
    }
}
