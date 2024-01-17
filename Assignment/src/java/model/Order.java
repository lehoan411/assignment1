/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author MSTTPC2
 */
public class Order {
    private int bid;
    private int uid;
    private double totalmoney;

    public Order() {
    }

    public Order(int bid, int uid, double totalmoney) {
        this.bid = bid;
        this.uid = uid;
        this.totalmoney = totalmoney;
    }

    public int getBid() {
        return bid;
    }

    public void setBid(int bid) {
        this.bid = bid;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public double getTotalmoney() {
        return totalmoney;
    }

    public void setTotalmoney(double totalmoney) {
        this.totalmoney = totalmoney;
    }


    
    
    
}
