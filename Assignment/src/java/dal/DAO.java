/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Account;
import model.category;
import model.product;

/**
 *
 * @author ADMIN
 */
public class DAO extends DBContext {
    

    public ArrayList<product> getAllProduct() {
        ArrayList<product> products = new ArrayList<>();
        try {

            String sql = "SELECT * FROM [product]";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                product a = new product(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getString(4), rs.getInt(5), rs.getString(6), rs.getInt(7), rs.getString(8));
                products.add(a);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return products;
    }
    

    
    public ArrayList<product> getLastProduct() {
        ArrayList<product> products = new ArrayList<>();
        try {

            String sql = "SELECT * FROM [product] order by product_id desc";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                product a = new product(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getString(4), rs.getInt(5), rs.getString(6), rs.getInt(7), rs.getString(8));
                products.add(a);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return products;
    }
    public ArrayList<product> getExpensiveProduct() {
        ArrayList<product> products = new ArrayList<>();
        try {

            String sql = "SELECT * FROM [product] order by product_price desc";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                product a = new product(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getString(4), rs.getInt(5), rs.getString(6), rs.getInt(7), rs.getString(8));
                products.add(a);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return products;
    }
    
    public ArrayList<product> getCheapProduct() {
        ArrayList<product> products = new ArrayList<>();
        try {

            String sql = "SELECT * FROM [product] order by product_price asc";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                product a = new product(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getString(4), rs.getInt(5), rs.getString(6), rs.getInt(7), rs.getString(8));
                products.add(a);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return products;
    }
    
    public ArrayList<product> getA_ZProduct() {
        ArrayList<product> products = new ArrayList<>();
        try {

            String sql = "SELECT * FROM [product] order by product_name asc";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                product a = new product(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getString(4), rs.getInt(5), rs.getString(6), rs.getInt(7), rs.getString(8));
                products.add(a);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return products;
    }
    
    public List<product> getListByPage(List<product> list,
            int start, int end) {
        ArrayList<product> arr = new ArrayList<>();
        for (int i = start; i < end; i++) {
            arr.add(list.get(i));
        }
        return arr;
    }
    
    public ArrayList<product> getPopularProduct() {
        ArrayList<product> products = new ArrayList<>();
        try {

            String sql = "SELECT * FROM [product] order by sell_id desc";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                product a = new product(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getString(4), rs.getInt(5), rs.getString(6), rs.getInt(7), rs.getString(8));
                products.add(a);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return products;
    }

    public ArrayList<category> getAllCategory() {
        ArrayList<category> categorys = new ArrayList<>();
        try {

            String sql = "SELECT * FROM [category]";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                category a = new category(rs.getInt(1), rs.getString(2));
                categorys.add(a);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return categorys;
    }

    public ArrayList<product> getProductByCID(String cid) {
        ArrayList<product> products = new ArrayList<>();
        try {

            String sql = "SELECT * FROM [product] where category_id=?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, cid);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                product a = new product(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getString(4), rs.getInt(5), rs.getString(6), rs.getInt(7), rs.getString(8));
                products.add(a);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return products;
    }
    
    public ArrayList<product> getProductByAminID(int id) {
        ArrayList<product> products = new ArrayList<>();
        try {

            String sql = "SELECT * FROM [product] where sell_id=?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, id);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                product a = new product(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getString(4), rs.getInt(5), rs.getString(6), rs.getInt(7), rs.getString(8));
                products.add(a);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return products;
    }
    
    public ArrayList<product> searchByName(String txtSearch) {
        ArrayList<product> products = new ArrayList<>();
        try {

            String sql = "SELECT * FROM [product] where [product_name] like ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, "%"+txtSearch+"%");
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                product a = new product(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getString(4), rs.getInt(5), rs.getString(6), rs.getInt(7), rs.getString(8));
                products.add(a);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return products;
    }
    
    public product getProductById(int id) {
        try {

            String sql = "SELECT * FROM [product] where product_id=?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, id);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                return new product(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getString(4), rs.getInt(5), rs.getString(6), rs.getInt(7), rs.getString(8));
               
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public Account getAccontByUserPass(String user, String pass) {
        try {

            String sql = "SELECT * FROM users WHERE [user_name] = ? and [user_pass] = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, user);
            stm.setString(2, pass);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                Account a = new Account(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4));
                return a;
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public Account checkAccountExist(String user) {
        try {

            String sql = "SELECT * FROM users WHERE [user_name] = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, user);

            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                Account a = new Account(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4));
                return a;
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public void signup(String user, String pass) {
        try {

            String sql = "INSERT INTO [dbo].[users]\n"
                    + "           ([user_name]\n"
                    + "           ,[user_pass]\n"
                    + "           ,[isAdmin])\n"
                    + "     VALUES\n"
                    + "           (?,?,0)";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, user);
            stm.setString(2, pass);
            stm.executeUpdate();
            
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    
    public Account changePass(String pass, String user) {
        try {
            String sql = "update [dbo].[users] set user_pass=? where user_name=? ";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, pass);
            stm.setString(2, user);
            stm.executeUpdate();            
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public void deleteProduct (String pid) {
        try {
            String sql = "DELETE FROM product WHERE [product_id] = ?";
             PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, pid);
            stm.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
         
    }
    
    
    
     public void createProduct(product p) {
        String query ="INSERT INTO [dbo].[product] "
                + "([product_id], [category_id], [sell_id], [product_name], [product_price], [product_describe], [quantity], [img]) "
                + "VALUES (?,?,?,?,?,?,?,?)";
        try {
            
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, p.getPid());
            ps.setInt(2, p.getCid());
            ps.setInt(3, p.getAid());
            ps.setString(4, p.getPname());
            ps.setDouble(5, p.getPrice());
            ps.setString(6, p.getDescrible());
            ps.setInt(7, p.getQuantity());
            ps.setString(8, p.getImg());
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
     public void editProduct(product p) {
        String query ="update product\n"
                + "set [category_id] = ?,\n"
                + "[product_name] = ?,\n"
                + "[product_price] = ?,\n"
                + "[product_describe] = ?,\n"
                + "[quantity] = ?,\n"
                + "[img] = ?\n"
                + "where [product_id] = ?";
        try {
            
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, p.getCid());
            ps.setString(2, p.getPname());
            ps.setDouble(3, p.getPrice());
            ps.setString(4, p.getDescrible());
            ps.setInt(5, p.getQuantity());
            ps.setString(6, p.getImg());
            ps.setInt(7, p.getPid());
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
     
     
     
     public List<product> getProductsByPrice(double from, double to) {
        List<product> products = new ArrayList<>();
        
            String sql = "SELECT * FROM [product] where product_price between ? and ?";
            try {
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setDouble(1, from);
            stm.setDouble(2, to);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                product a = new product(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getString(4), rs.getInt(5), rs.getString(6), rs.getInt(7), rs.getString(8));
                products.add(a);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return products;
    }
     

    public static void main(String[] args) {
        DAO dao = new DAO();
        //System.out.println(dao.changePass("1234", "ronaldo"));
        
 //dao.insertProduct("CHUỘT", 1, "Chuột có dây Logitech M90", "4.85", "Chuột Logitech M90 là giải pháp bền bỉ, đơn giản và hiệu quả để dùng cho văn phòng, góc làm việc hoặc góc học tập. Thiết bị được thiết kế theo phong cách nhẹ nhàng với hai tone màu xám – đen. Chiều dài dây 1,8 mét linh hoạt kết hợp cùng độ nhạy 1000 DPI chắc chắn sẽ giúp M90 phục vụ bạn một cách hiệu quả.", "123", "image/LogitechM90.jpg");
          // System.out.println(dao);
        
       //List<product> list = dao.getLastProduct();
       List<product> list = dao.getProductsByPrice(1, 10);
       
       for (product o : list) {
           System.out.println(o);
       }
    }

}
