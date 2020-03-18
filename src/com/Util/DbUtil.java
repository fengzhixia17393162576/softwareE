package com.Util;

import java.sql.*;

   public class DbUtil {

	  // private String driver="com.microsoft.sqlserver.jdbc.SQLServerDriver";
	   public static String url="jdbc:sqlserver://localhost;DatabaseName=db-jsp";
	   public static String user="sa";
	   public static String password="fzx201626";
	   
	    
	    public static Connection getCon () {
	        Connection con = null;
	        
	        try {
	            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");//加载驱动
	            con = DriverManager.getConnection(url,user,password);
	            System.out.println("连接数据库成功！");
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	        
	        return con;
	    }    
	    
	    
	    public static void close (Statement state, Connection con) {
	        if (state != null) {
	            try {
	                state.close();
	            } catch (SQLException e) {
	                e.printStackTrace();
	            }
	        }
	        
	        if (con != null) {
	            try {
	                con.close();
	            } catch (SQLException e) {
	                e.printStackTrace();
	            }
	        }
	    }
	    
	    public static void close (ResultSet rs, Statement state, Connection con) {
	        if (rs != null) {
	            try {
	                rs.close();
	            } catch (SQLException e) {
	                e.printStackTrace();
	            }
	        }
	        
	        if (state != null) {
	            try {
	                state.close();
	            } catch (SQLException e) {
	                e.printStackTrace();
	            }
	        }
	        
	        if (con != null) {
	            try {
	                con.close();
	            } catch (SQLException e) {
	                e.printStackTrace();
	            }
	        }
	    }

	    }

