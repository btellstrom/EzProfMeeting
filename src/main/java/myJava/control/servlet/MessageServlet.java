package myJava.control.servlet;

import myJava.model.beans.Messaggio;
import myJava.model.general.DataManager;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

@WebServlet(name = "MessageServlet")
public class MessageServlet extends HttpServlet {
    DataManager dm = new DataManager();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int idStudente = Integer.parseInt(request.getParameter("idStudente"));
        int idProfessore = Integer.parseInt(request.getParameter("idProfessore"));
        String lato = request.getParameter("lato");
        System.out.println("A");
        ArrayList<Messaggio> messaggi = dm.getArrayListMessaggio(idStudente,idProfessore);
        String risposta="";
        System.out.println(messaggi.size());
        if(messaggi.size()!=0) {
            risposta = "[";
            int i = 0;

            for (; i < messaggi.size() - 1; i++) {
                Messaggio a = messaggi.get(i);
                risposta = risposta + "{" +
                        "\"testo\": \"" + a.getTestoMessaggio() + "\"," +
                        "\"lato\": \"" + a.getLato() + "\"," +
                        "\"data\": \"" + a.getDataMessaggio().toString() + "\"," +
                        "\"orario\": \"" + a.getOrarioMessaggio().toString() + "\"},";
            }
            Messaggio a = messaggi.get(i);
            risposta = risposta + "{" +
                    "\"testo\": \"" + a.getTestoMessaggio() + "\"," +
                    "\"lato\": \"" + a.getLato() + "\"," +
                    "\"data\": \"" + a.getDataMessaggio().toString() + "\"," +
                    "\"orario\": \"" + a.getOrarioMessaggio().toString() + "\"}";


            risposta = risposta + "]";
        }
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        System.out.println("C");

        PrintWriter out = response.getWriter();
        out.write(risposta);
    }
}
