package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDao {

        public String findUsername(String username){
            String psw = null;
            Connection con =null;
            PreparedStatement pstmt =null;
            ResultSet rs = null;
            try {
                String driver ="com.mysql.jdbc.Driver";
                String url ="jdbc:mysql://127.0.0.1:3306/User?useUnicode=true&characterEncoding=utf8";
                String user ="root";
                String password ="root";//<span style="font-family: Arial, Helvetica, sans-serif;">//改为自己的用户名密码和数据库名</span>
                        Class.forName(driver);
                con = DriverManager.getConnection(url, user, password);
                String sql = "select * from user where username=?";
                pstmt = con.prepareStatement(sql);
                pstmt.setString(1, username);
                rs = pstmt.executeQuery();
                if(rs==null){
                    return null;
                }
                if(rs.next()){
                    psw=rs.getString("password");
                }else{
                    psw=null;
                }
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            } catch (SQLException e) {
                e.printStackTrace();
            }finally {
                try {
                    if(pstmt!=null)pstmt.close();
                    if(con!=null)con.close();
                }
                catch (SQLException e) {
                }
            }
            return psw;
        }
        public void addUser(String username,String psw){
            Connection con =null;
            PreparedStatement pstmt =null;
            try {
                String driver ="com.mysql.jdbc.Driver";
                String url ="jdbc:mysql://127.0.0.1:3306/User?useUnicode=true&characterEncoding=utf8";
                String user ="root";
                String password ="root";//改为自己的用户名密码和数据库名
                Class.forName(driver);
                con = DriverManager.getConnection(url, user, password);
                String sql = "INSERT INTO USER VALUES(?,?)";
                pstmt = con.prepareStatement(sql);
                pstmt.setString(1, username);
                pstmt.setString(2, psw);
              //  pstmt.setString(3, String.valueOf(userid));
                //userid++;
                pstmt.executeUpdate();
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            } catch (SQLException e) {
                e.printStackTrace();
            }finally {
                try {
                    if(pstmt!=null)pstmt.close();
                    if(con!=null)con.close();
                }
                catch (SQLException e) {
                }
            }
        }
        //单独测试使用
     //   public static void main(String[] args) {
     //   String psw =new UserDao().findUsername("test1");
     //   System.out.println(psw);
     //   UserDao u = new UserDao();
     //   u.addUser("1345", "1345");
     //   }

    }


