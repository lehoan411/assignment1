/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author MSTTPC2
 */
public class product {
    private int pid;
    private int cid;
    private int aid;
    private String pname;
    private double price;
    private String describle;
    private int quantity;
    private String img;

    public product() {
    }

    public product(int pid, int cid, int aid, String pname, double price, String describle, int quantity, String img) {
        this.pid = pid;
        this.cid = cid;
        this.aid = aid;
        this.pname = pname;
        this.price = price;
        this.describle = describle;
        this.quantity = quantity;
        this.img = img;
    }

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public int getAid() {
        return aid;
    }

    public void setAid(int aid) {
        this.aid = aid;
    }
    

    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getDescrible() {
        return describle;
    }

    public void setDescrible(String describle) {
        this.describle = describle;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    @Override
    public String toString() {
        return "product{" + "pid=" + pid + ", cid=" + cid + ", pname=" + pname + ", price=" + price + ", describle=" + describle + ", quantity=" + quantity + ", img=" + img + '}';
    }
    
}
