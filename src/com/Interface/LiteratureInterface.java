package com.Interface;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.Util.DbUtil;
import com.model.Literature;

public class LiteratureInterface{
    public boolean addLiterature(Literature literature){
        String Institute=literature.getInstitute();
        String Banji=literature.getBanji();
        String Writer=literature.getWriter();
        String Telephone=literature.getTelephone();
        String Province=literature.getProvince();
        String City=literature.getCity();
        String Abroad=literature.getAbroad();
        String Hubeiji=literature.getHubeiji();
        String Hubeiyiqu=literature.getHubeiyiqu();
        String Wuhanyiqu=literature.getWuhanyiqu();
        String Atwuhan=literature.getAtwuhan();
        String Athubei=literature.getAthubei();
        String Fanxiao=literature.getFanxiao();
        String Symptom=literature.getSymptom();
        String Infect=literature.getInfect();
        String Qita=literature.getQita();

       // DbUtil db=new DbUtil();
        try {
            String sql="INSERT INTO xinxi(Institute,Banji,Writer,Telephone,Province,City,Abroad,Hubeiji,Hubeiyiqu,Wuhanyiqu,Atwuhan,Athubei,Fanxiao,Symptom,Infect,Qita) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            Connection conn=DbUtil.getCon();
            PreparedStatement ps=conn.prepareStatement(sql);
            ps.setString(1, Institute);
            ps.setString(2, Banji);
            ps.setString(3, Writer);
            ps.setString(4, Telephone);
            ps.setString(5, Province);
            ps.setString(6, City);
            ps.setString(7, Abroad);
            ps.setString(8, Hubeiji);
            ps.setString(9, Hubeiyiqu);
            ps.setString(10, Wuhanyiqu);
            ps.setString(11, Atwuhan);
            ps.setString(12, Athubei);
            ps.setString(13,Fanxiao);
            ps.setString(14, Symptom);
            ps.setString(15,Infect);
            ps.setString(16, Qita);
            ps.executeUpdate();
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return true;

    }
}
