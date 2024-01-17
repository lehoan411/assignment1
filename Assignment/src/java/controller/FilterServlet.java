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
import java.util.ArrayList;
import java.util.List;
import model.Cart;
import model.Item;
import model.category;
import model.product;

/**
 *
 * @author MSTTPC2
 */
public class FilterServlet extends HttpServlet {

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
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet FilterServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet FilterServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        String[] pp = {"Dưới 10$", "Từ 10-100$", "Từ 100-1000$", "Trên 1000$"};
        boolean[] pb = new boolean[pp.length + 1];
        DAO d = new DAO();
       List<category> listc = d.getAllCategory();

        List<product> list = new ArrayList<>();
        String[] pricef = request.getParameterValues("price");
        if (pricef != null) {
            double from = 0, to = 0;
            for (int i = 0; i < pricef.length; i++) {
                List<product> temp = new ArrayList<>();
                if (pricef[i].equals("0")) {
                    from = 0;
                    to = 20000;
                    list = d.getProductsByPrice(from, to);
                    pb[0] = true;
                    break;
                } else {
                    if (pricef[i].equals("1")) {
                        from = 0;
                        to = 10;
                        temp = d.getProductsByPrice(from, to);
                        list.addAll(temp);
                        pb[1] = true;
                    }
                    if (pricef[i].equals("2")) {
                        from = 10;
                        to = 100;
                        temp = d.getProductsByPrice(from, to);
                        list.addAll(temp);
                        pb[2] = true;
                    }
                    if (pricef[i].equals("3")) {
                        from = 100;
                        to = 1000;
                        temp = d.getProductsByPrice(from, to);
                        list.addAll(temp);
                        pb[3] = true;
                    }
                    if (pricef[i].equals("4")) {
                        from = 1000;
                        to = 200000;
                        temp = d.getProductsByPrice(from, to);
                        list.addAll(temp);
                        pb[4] = true;
                    }
                }
            }
        } else if (pricef == null) {
            pb[0] = true;
        }
        
        
        HttpSession session = request.getSession(true);        
        Cart cart=null;
        Object o=session.getAttribute("cart");
        String tid = request.getParameter("pid");
        if(o!=null) {
            cart =(Cart)o;
        }else{
            cart=new Cart();
        }
        int id;
        try {
            id=Integer.parseInt(tid);       
            product p = d.getProductById(id);
            double price = p.getPrice();
            Item t = new Item(p, 1, price);
            cart.addItem(t);
        } catch (NumberFormatException e) {
            System.out.println(e);
        }
        List<Item> listcart = cart.getItems();
        session.setAttribute("cart", cart);
        session.setAttribute("size", listcart.size());
        session.setMaxInactiveInterval(5000);
        
        
        request.setAttribute("listC", listc);
        request.setAttribute("listP", list);
        request.setAttribute("pp", pp);
        request.setAttribute("pb", pb);
        
        request.getRequestDispatcher("shop.jsp").forward(request, response);
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
