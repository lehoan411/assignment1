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
import model.category;
import model.product;

/**
 *
 * @author MSTTPC2
 */
public class Cheap extends HttpServlet {

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
            DAO dao = new DAO();
            String[] pp = {"Dưới 10$", "Từ 10-100$", "Từ 100-1000$", "Trên 1000$"};
            boolean[] pb = new boolean[pp.length + 1];
            pb[0] = true;
            List<category> listc = dao.getAllCategory();
            List<product> list1 = dao.getCheapProduct();
            int page, numperpage = 6;
            int size = list1.size();
            int num = (size % 6 == 0 ? (size / 6) : ((size / 6)) + 1);//so trang
            String xpage = request.getParameter("page");
            if (xpage == null) {
                page = 1;
            } else {
                page = Integer.parseInt(xpage);
            }
            int start, end;
            start = (page - 1) * numperpage;
            end = Math.min(page * numperpage, size);
            List<product> list = dao.getListByPage(list1, start, end);
            request.setAttribute("page", page);
            request.setAttribute("num", num);

            HttpSession session = request.getSession(true);
            Cart cart = null;
            Object o = session.getAttribute("cart");
            String tid = request.getParameter("pid");
            if (o != null) {
                cart = (Cart) o;
            } else {
                cart = new Cart();
            }
            int id;
            try {
                id = Integer.parseInt(tid);
                product p = dao.getProductById(id);
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

            request.setAttribute("listP", list);
            request.setAttribute("listC", listc);
            request.setAttribute("pp", pp);
            request.setAttribute("pb", pb);
            request.getRequestDispatcher("shopCH.jsp").forward(request, response);
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
