package controllers;

import java.io.IOException;

import javax.persistence.EntityManager;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.Message;
import utils.DButil;

@WebServlet("/show")
public class ShowServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public ShowServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        EntityManager em = DButil.createEntityManager();

                        //find()メソッド→第一引数にDTOクラス名、第二引数にテーブル検索時のid
                        //request.getParameter()はString型で取得するので、Integer.parseIntで整数値型に変換
        Message m = em.find(Message.class, Integer.parseInt(request.getParameter("id")));

        em.close();

        request.setAttribute("message", m);

        RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/messages/show.jsp");
        rd.forward(request, response);

    }

}
