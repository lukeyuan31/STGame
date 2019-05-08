package Servlet;

import DAO.QuestionDao;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import DAO.QuestionDao;
import DAO.PointDao;

public class AnswerServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
        public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        String answer_id = request.getParameter("answer_id");
        String user_answer = request.getParameter("user_answer");
        String user_id = request.getParameter("user_id");
        //String user_id=tempuser_id;
        String ans=new QuestionDao().findAnswer(answer_id);
        String strpoint=new PointDao().findPoint(user_id);
        int point=Integer.parseInt(strpoint);
        if (user_answer==null){
           request.setAttribute("msg","请输入您的答案");
           request.getRequestDispatcher("jsp/index.jsp").forward(request, response);
           return;

        }
        if (user_answer.equals(ans)){
            request.setAttribute("msg","回答正确！");
            new PointDao().addPoint("1");
            point+=1;
            request.setAttribute("point",point);
            request.getRequestDispatcher("jsp/My_Puzzle.jsp").forward(request, response);
            return;
        }
        if (!user_answer.equals(ans)){
            request.setAttribute("msg","回答错误！");
            request.getRequestDispatcher("jsp/My_Puzzle.jsp").forward(request, response);
            return;
        }
    }
}
