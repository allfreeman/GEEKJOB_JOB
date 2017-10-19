/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.*;
import java.util.*;

/**
 *
 * @author soeda-r
 */
@WebServlet(name = "db_sample2", urlPatterns = {"/db_sample2"})
public class db_sample2 extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        response.setCharacterEncoding("UTF-8");
        
        PrintWriter out = response.getWriter();
        
        // クエリ回収
        // アクセスURLイメージ⇒http://localhost/db_sample?n=xxxx&a=xx&t=xxxxxx
        String sName = request.getParameter("n");
        String sAge = request.getParameter("a");
        String sTel = request.getParameter("t");
        
        // 検索用固定値
        
        Connection db_con;
        
        try {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            db_con = DriverManager.getConnection("jdbc:mysql://localhost/Challenge_db", "root", "");
            
            ArrayList<String> params = new ArrayList<String>();
            
            String sSql = "SELECT * FROM profiles ";
            String sWhere = "";

            // 名前があれば検索条件に
            if (sName != null && !sName.equals("")) {
                params.add(sName);
                
                sWhere += "WHERE name like ? ";
            }
            // 年齢があれば検索条件に
            if (sAge != null && !sAge.equals("")) {
                params.add(sAge);
                
                if (!sWhere.equals("")) {
                    sWhere += "AND ";
                } else {
                    sWhere += "WHERE ";
                }
                sWhere += "age like ? ";
            }
            // 電話番号があれば検索条件に
            if (sTel != null && !sTel.equals("")) {
                params.add(sTel);
                
                if (!sWhere.equals("")) {
                    sWhere += "AND ";
                } else {
                    sWhere += "WHERE ";
                }
                sWhere += "tell like ? ";
            }
            
            if (!sWhere.equals("")) {
                sSql += sWhere;
            }
            
            System.out.print(sSql);
            
            int paramCnt = 1;
            PreparedStatement ps = db_con.prepareStatement(sSql);
            for(String p : params) {
                ps.setString(paramCnt++, "%"+p+"%");
            }
            
            ResultSet rs = ps.executeQuery();
            while(rs.next()) {
                out.print(rs.getString(1)+",");
                out.print(rs.getString(2)+",");
                out.print(rs.getString(3)+",");
                out.print(rs.getString(4)+",");
                out.print(rs.getString(5)+"<br>");
            }
            
            rs.close();
            ps.close();
            db_con.close();
            
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
