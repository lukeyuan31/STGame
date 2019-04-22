package Servlet;

import com.sun.deploy.net.HttpRequest;

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
            ByteArrayOutputStream byteArrayOutputStream=new ByteArrayOutputStream(1024);
            PrintStream cacheStream= new PrintStream(byteArrayOutputStream);
            PrintStream oldStream=System.out;
            System.setOut(cacheStream);
            Static_Analysis sa=new Static_Analysis();//调用静态分析对输入进行判断分析
            sa.JavaAnalysis(filePath);
            String message=byteArrayOutputStream.toString();
            System.setOut(oldStream);
            HttpSession session=request.getSession();
            session.setAttribute("message",message);
            request.getRequestDispatcher("jsp/CodeTest1.jsp").forward(request,response);
        } catch (Exception e) {
            e.printStackTrace();
        }

    }
    public void doPost(HttpServletRequest request,HttpServletResponse response){
            this.doGet(request,response);
    }
}
