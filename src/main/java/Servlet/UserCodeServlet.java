package Servlet;

import java.io.*;

import javax.servlet.http.*;
public class UserCodeServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) {
        String user_code = request.getParameter("user_input");
        String user_id = request.getParameter("user_id");
        String filePath="E:\\"+user_id+".txt";
        try {

            //中文乱码
            response.setContentType("text/html;charset=gbk");

            PrintWriter pw = response.getWriter();

            //创建一个FileWriter  看内存数据 ->  磁盘文件(写入,输出)
            //看内存数据 <-  磁盘文件(读入,输入)
            FileWriter f = new FileWriter(filePath);
            BufferedWriter bw = new BufferedWriter(f);
            bw.write(user_code);
            bw.close();
            request.getRequestDispatcher("jsp/index.jsp").forward(request,response);
        } catch (Exception e) {
            e.printStackTrace();
        }

    }
    public void doPost(HttpServletRequest request,HttpServletResponse response){
            this.doGet(request,response);
    }
}