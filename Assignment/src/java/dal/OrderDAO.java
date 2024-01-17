/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import model.Account;
import model.Cart;
import model.Item;

/**
 *
 * @author MSTTPC2
 */
public class OrderDAO extends DBContext {
    public void addOrder(Account u, Cart cart) {
        try {
            String sql="insert into [bill] values(?,?)";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, u.getUid());
            st.setDouble(2, cart.getTotalMoney());
            st.executeUpdate();
            
            String sql1="select top 1 bill_id from [bill] order by bill_id desc";
            PreparedStatement st1=connection.prepareStatement(sql1);
            ResultSet rs = st1.executeQuery();
            if(rs.next()){
                int bid = rs.getInt(1);
                for(Item i:cart.getItems()){
                    String sql2="insert into [bill_detail] values (?,?,?,?)";
                    PreparedStatement st2=connection.prepareStatement(sql2);
                    st2.setInt(1, bid);
                    st2.setInt(2, i.getProduct().getPid());
                    st2.setInt(3, i.getQuantity());
                    st2.setDouble(4, i.getPrice());
                    st2.executeUpdate();
                }
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
}
