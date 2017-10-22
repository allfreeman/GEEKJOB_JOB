/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Yuuki
 */
@WebServlet(urlPatterns = {"/java11_6"})
public class java11_6 extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
    ArrayList<String> profile(int id){
        ArrayList<String> prof1 = new ArrayList<>();
        ArrayList<String> prof2 = new ArrayList<>();
        ArrayList<String> prof3 = new ArrayList<>();
        
        //一人目-ID = 1
        prof1.add(String.valueOf(1));
        prof1.add("Yamada");
        prof1.add(String.valueOf(20111111));
        prof1.add("Osaka");
        
        //二人目-ID = 2
        prof2.add(String.valueOf(2));
        prof2.add("Suzuki");
        prof2.add(String.valueOf(20121212));
        prof2.add(null);
        
        //三人目-ID = 3
        prof3.add(String.valueOf(3));
        prof3.add("Tanaka");
        prof3.add(String.valueOf(20130313));
        prof3.add("Tokyo");
        
        switch (id) {
            case 1:
                return prof1;
            case 2:
                return prof2;
            case 3:
                return prof3;
            default:
                return null;
        }
        
    }
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
           
            ArrayList<String> prof = new ArrayList<String>();
            
            for(int i = 1;i<=3;i++){
                
            prof = profile(i);
            
            if(i !=1)out.print("<br/>");
            //戻り値がnull
            if(prof == null){
                out.print("そのidは使われていません。");
                break;
            }
            
            //名前の出力
            if(prof.get(1) == null){
                out.print("データがありません。<br/>");
                continue;
            }
            else{
                out.print("名前：" + prof.get(1) + "<br/>");
            }
            
            //生年月日の出力
            if(prof.get(2) == null){
                out.print("データがありません。<br/>");
                continue;
            }
            else{
                out.print("生年月日：" + prof.get(2) + "<br/>");
            }
            
            //住所の出力
            if(prof.get(3) == null){
                out.print("データがありません。<br/>");
                continue;
            }
            else{
                out.print("住所：" + prof.get(3) + "<br/>");
            }
            
            
            
            }
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
