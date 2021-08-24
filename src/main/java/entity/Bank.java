package entity;

import java.io.Serializable;
import java.util.Date;

public class Bank implements Serializable {
    private  Integer id;
    private  String name;
    private  String password;
    private  String balance;
    private Date day;

    public Bank() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getBalance() {
        return balance;
    }

    public void setBalance(String balance) {
        this.balance = balance;
    }

    public Date getDay() {
        return day;
    }

    public void setDay(Date day) {
        this.day = day;
    }

    @Override
    public String toString() {
        return "Bank{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", password='" + password + '\'' +
                ", balance='" + balance + '\'' +
                ", day=" + day +
                '}';
    }

    public Bank(Integer id, String name, String password, String balance, Date day) {
        this.id = id;
        this.name = name;
        this.password = password;
        this.balance = balance;
        this.day = day;
    }
}
