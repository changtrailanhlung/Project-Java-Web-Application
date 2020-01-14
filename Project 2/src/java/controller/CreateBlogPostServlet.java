/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import databaseCRUD.BlogPostDAO;
import databaseCRUD.BlogPostDTO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author lehon
 */
public class CreateBlogPostServlet extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        String result = "";
        try {
            BlogPostDAO dao = new BlogPostDAO();
            
            System.out.println(request.getParameter("txtTopic"));
            System.out.println(request.getParameter("txtTittle"));
            System.out.println(request.getParameter("txtDetail"));
            System.out.println(request.getParameter("txtAuthor"));
            System.out.println(request.getParameter("txtDateCreate"));
            System.out.println(request.getParameter("txtDateUpdate"));
            
            String detail = request.getParameter("txtDetail");
            String tittle = request.getParameter("txtTittle");
            String topic = request.getParameter("txtTopic");
            String author = request.getParameter("txtAuthor");
            String dateCreate = request.getParameter("txtDateCreate");
            String dateUpdate = request.getParameter("txtDateUpdate");
            
            
            BlogPostDTO dto = new BlogPostDTO(tittle, detail, author, topic, dateCreate, dateUpdate);
            System.out.println(dto.toString());
            result = dao.CreateNewBlogPost(dto);
            System.out.println(result);
        } catch (Exception e) {
            e.printStackTrace();
            // response.sendRedirect("PostDetail.jsp");
        }
        //   response.sendRedirect("Posts.jsp");
        try (PrintWriter out = response.getWriter()) {
            out.println(request.getParameter("txtDetail"));
        } catch (Exception e) {
            e.printStackTrace();
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
