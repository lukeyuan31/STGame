package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class QuestionDao {

    public String findAnswer(String answer) {
        String ans = null;
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
            String sql = "select * from answers where idanswers=?";
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, answer);
            rs = pstmt.executeQuery();
            if (rs == null) {
                return null;
            }
            if (rs.next()) {
                ans = rs.getString("answers");
            } else {
                ans = null;
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
        return ans;
    }

    //public static void main(String[] args) {
      //  String ans = new QuestionDao().findAnswer("3");
     //   System.out.println(ans);
        // UserDao u = new UserDao();
        //u.addUser("1345", "1345");
 //   }
}

   // }

