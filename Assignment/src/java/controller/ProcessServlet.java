/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import dal.DAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;
import model.Cart;
import model.Item;
import model.product;

/**
 *
 * @author MSTTPC2
 */
public class ProcessServlet extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession(true);        
        Cart cart=null;
        Object o=session.getAttribute("cart");
        if(o!=null) {
            cart =(Cart)o;
        }else{
            cart=new Cart();
        }
        String tnum = request.getParameter("num").trim();
        String tid = request.getParameter("id");
        int id,num;
        try {
            id=Integer.parseInt(tid);
            num=Integer.parseInt(tnum);
            if((num==-1) && (cart.getQuantityById(id)<=1)){
                cart.removeItem(id);
            }else{
                DAO dao = new DAO();
                product p = dao.getProductById(id);
                double price = p.getPrice();
                Item t = new Item(p, num, price);
                cart.addItem(t);
            }
        } catch (NumberFormatException e) {
            num=1;
        }
        List<Item> list1 = cart.getItems();
        session.setAttribute("cart", cart);
        session.setAttribute("size", list1.size());
        request.getRequestDispatcher("cart.jsp").forward(request, response);
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
         PrintWriter out = response.getWriter();
        HttpSession session = request.getSession(true);        
        Cart cart=null;
        Object o=session.getAttribute("cart");
        if(o!=null) {
            cart =(Cart)o;
        }else{
            cart=new Cart();
        }
        int id = Integer.parseInt(request.getParameter("id"));
        cart.removeItem(id);
        List<Item> listcart = cart.getItems();
        session.setAttribute("cart", cart);
        session.setAttribute("size", listcart.size());
        request.getRequestDispatcher("cart.jsp").forward(request, response);
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
