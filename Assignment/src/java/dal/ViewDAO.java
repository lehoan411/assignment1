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
import model.Order;
import model.Sum;
import model.product;

/**
 *
 * @author MSTTPC2
 */
public class ViewDAO extends DBContext {

    public int getView() {
        int count = 0;
        try {
            String sql = "select * from [view]";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                count = rs.getInt("viewed");
            }
            return count;
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return count;
    }

    public void updateView() {
        try {
            String sql = "UPDATE [view] SET viewed = viewed + 1";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public List<Sum> getSumQuantity() {
        List<Sum> Sums = new ArrayList<>();
        try {

            String sql = "SELECT SUM(quantity) AS tong\n"
                    + "FROM product;";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Sum a = new Sum(rs.getInt(1));
                Sums.add(a);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return Sums;
    }

    public List<Sum> getSumUser() {
        List<Sum> Sums = new ArrayList<>();
        try {

            String sql = "SELECT count([user_name]) AS tong\n"
                    + "FROM users;";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Sum a = new Sum(rs.getInt(1));
                Sums.add(a);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return Sums;
    }

    public List<Sum> getSumBill() {
        List<Sum> Sums = new ArrayList<>();
        try {

            String sql = "SELECT count([bill_id]) AS tong\n"
                    + "FROM bill;";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Sum a = new Sum(rs.getInt(1));
                Sums.add(a);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return Sums;
    }

    public List<Sum> getSumPriceBill() {
        List<Sum> Sums = new ArrayList<>();
        try {

            String sql = "SELECT sum([total]) AS tong\n"
                    + "FROM bill;";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Sum a = new Sum(rs.getInt(1));
                Sums.add(a);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return Sums;
    }

    public static void main(String[] args) {
        ViewDAO d = new ViewDAO();
        List<Sum> list = d.getSumBill();

        for (Sum o : list) {
            System.out.println(o);
        }

    }
}
