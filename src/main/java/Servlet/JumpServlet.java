package Servlet;

import DAO.QuestionDao;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class JumpServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
                request.setCharacterEncoding("utf-8");
                response.setContentType("text/html;charset=utf-8");
                String question_id=request.getParameter("question_id");
                if (question_id.equals("1")){
                    request.getRequestDispatcher("jsp/adequately_testing.jsp").forward(request, response);;
                    return;
        }
                if (question_id.equals("2")){
                    request.getRequestDispatcher("jsp/chaining_test.jsp").forward(request, response);;
                    return;
                }
                if (question_id.equals("3")){
                    request.getRequestDispatcher("jsp/expected_result.jsp").forward(request, response);;
                    return;
                }
                if (question_id.equals("4")){
                    request.getRequestDispatcher("jsp/named_correctly.jsp").forward(request, response);;
                    return;
                }
                if (question_id.equals("5")){
                    request.getRequestDispatcher("jsp/specific_value.jsp").forward(request, response);;
                    return;
                }
                if (question_id.equals("6")){
                    request.getRequestDispatcher("jsp/test_private_method.jsp").forward(request, response);;
                    return;
                }
                if (question_id.equals("7")){
                    request.getRequestDispatcher("jsp/too_much_assertion.jsp").forward(request, response);;
                    return;
                }
                if (question_id.equals("8")){
                    request.getRequestDispatcher("jsp/CodeTest1.jsp").forward(request,response);
                }

    }
}
