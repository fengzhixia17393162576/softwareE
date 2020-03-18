package com.web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Interface.LiteratureInterface;
import com.Util.DbUtil;
import com.model.Literature;

public class PublishServlet extends HttpServlet {
    DbUtil db=new DbUtil();

    private static final long serialVersionUID = 1L;

    public PublishServlet() {
        super();
    }

    public void destroy() {
        super.destroy(); // Just puts "destroy" string in log
        // Put your code here
    }
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");  
        response.setContentType("text/html;charset=UTF-8");

        String Institute=request.getParameter("Institute");
        String Banji=request.getParameter("Banji");
        String Writer=request.getParameter("Writer");
        String Telephone=request.getParameter("Telephone");
        String Province=request.getParameter("Province");
        String City=request.getParameter("City");
        String Abroad=request.getParameter("Abroad");
        String Hubeiji=request.getParameter("Hubeiji");
        String Wuhanyiqu=request.getParameter("Wuhanyiqu");
        String Hubeiyiqu=request.getParameter("Hubeiyiqu");
        String Atwuhan=request.getParameter("Atwuhan");
        String Athubei=request.getParameter("Athubei");
        String Fanxiao=request.getParameter("Fanxiao");
        String Symptom=request.getParameter("Symptom");
        String Infect=request.getParameter("Infect");
        String Qita=request.getParameter("Qita");
        Literature literature=new Literature();
        literature.setInstitute(Institute);
        literature.setBanji(Banji);
        literature.setWriter(Writer);
        literature.setTelephone(Telephone);
        literature.setProvince(Province);
        literature.setCity(City);
        literature.setAbroad(Abroad);
        literature.setHubeiji(Hubeiji);
        literature.setWuhanyiqu(Wuhanyiqu);
        literature.setHubeiyiqu(Hubeiyiqu);
        literature.setAtwuhan(Atwuhan);
        literature.setAthubei(Athubei);
        literature.setFanxiao(Fanxiao);
        literature.setSymptom(Symptom);
        literature.setInfect(Infect);
        literature.setQita(Qita);

        LiteratureInterface literatureInter=new LiteratureInterface();
        literatureInter.addLiterature(literature);

        request.getRequestDispatcher("test.jsp").forward(request, response);
    }
}
