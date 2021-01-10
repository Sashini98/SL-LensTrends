/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Forum;

import Controller.DaoImpl.AnswerDaoImpl;
import Controller.DaoImpl.PhotographerDaoImp;
import Model.Answer;
import Model.Dao.AnswerDao;
import Model.Dao.PhotographerDao;
import Model.Photographer;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.Integer.parseInt;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Sashini Shihara
 */
public class Answer_display extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("hellooooooo");
        String quesid = request.getParameter("qid");
        int qid = parseInt(quesid);
        System.out.println("qid:" + qid);

        try {
            ArrayList<String> a = new ArrayList();

            AnswerDao answerDao = new AnswerDaoImpl();
            ArrayList<Answer> answ = (ArrayList<Answer>) answerDao.getAllAnswers(qid);

            for (Answer an : answ) {
                String name = "";
                String pid = an.getPhotographerId();
                PhotographerDao pDao = new PhotographerDaoImp();
                Photographer photographer = pDao.getPhotographerById(pid);;

                name = photographer.getFname() + " " + photographer.getLname();

                SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
                String date = sdf.format(an.getanswerDate());

                a.add(an.getanswer());
                a.add(an.getPhotographerId());
                a.add(date);
            }

            request.setAttribute("answers", a);
            request.getRequestDispatcher("View/Fourm/Answer.jsp").forward(request, response);
        } catch (Exception e) {
        }

    }

}
