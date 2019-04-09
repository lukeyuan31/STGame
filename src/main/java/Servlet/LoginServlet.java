package Servlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import DAO.UserDao;

//@WebServlet("/myController")
public class LoginServlet extends HttpServlet {
   /* @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        System.err.println("---");
        //解决乱码
        req.setCharacterEncoding("UTF-8");
        String name=req.getParameter("name");
        req.setAttribute("name",name);
        System.out.println(name);
        req.getRequestDispatcher("index.jsp").forward(req, resp);
    }
    */

        private static final long serialVersionUID = 1L;

        public void doPost(HttpServletRequest request, HttpServletResponse response)
                throws ServletException, IOException {
            request.setCharacterEncoding("utf-8");
            response.setContentType("text/html;charset=utf-8");
            String username = request.getParameter("username");
            String password = request.getParameter("password");
           // String verifyc  = request.getParameter("verifycode");//<span style="font-family: Arial, Helvetica, sans-serif;">//得到表单输入的内容</span>
                    String svc =(String) request.getSession().getAttribute("sessionverify");
            String psw =new UserDao().findUsername(username);
          /*  if(!svc.equalsIgnoreCase(verifyc)){
                request.setAttribute("msg", "验证码错误！");
                request.getRequestDispatcher("/index.jsp").forward(request, response);
                return;
            }
            */
            if(psw ==null){
                request.setAttribute("msg", "没有这个用户！");
                request.getRequestDispatcher("/jsp/index.jsp").forward(request, response);
                return;
            }
            if(psw!=null&&!psw.equals(password)){
                request.setAttribute("msg", "密码错误请重新输入！");
                request.getRequestDispatcher("/jsp/index.jsp").forward(request, response);
                return;
            }
            if(psw.equals(password)){
                request.setAttribute("msg", "用户："+username+",欢迎访问");
                request.getRequestDispatcher("/jsp/adequately_testing.jsp").forward(request, response);
                //response.setHeader("Refresh","1;url=welcome.jsp");
            }

        }

}
