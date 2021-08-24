package action;

import com.alibaba.fastjson.JSON;
import com.opensymphony.xwork2.ActionSupport;
import entity.Bank;
import mybatisService.BankDaoServiceImpl;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;
import java.util.List;

public class BankAction extends ActionSupport {
    private List<Bank> banks;
    private  Bank bank;
    private  Integer id;

    public String selectAllAction(){
        PrintWriter wt = null;
        try{
            HttpServletResponse rs = ServletActionContext.getResponse();
            rs.setCharacterEncoding("utf-8");
            BankDaoServiceImpl bds = new BankDaoServiceImpl();
            banks = bds.selectAll();
            String s = JSON.toJSONStringWithDateFormat(banks, "yyyy-MM-dd");
            wt = rs.getWriter();
            wt.print(s);
        }catch(Exception e){
            e.printStackTrace();
        }finally {
            wt.close();
        }
        return null;
    }
    public String insertAction(){
        try{
            BankDaoServiceImpl bds = new BankDaoServiceImpl();
            bds.insertBank(bank);
            return "Allview";
        }catch(Exception e){
            e.printStackTrace();
            return  "Error";
        }
    }
    public String deleteAction(){
        try{
            BankDaoServiceImpl bds = new BankDaoServiceImpl();
            bds.deleteBank(id);
            return "Allview";
        }catch(Exception e){
            e.printStackTrace();
            return  "Error";
        }
    }
    public String updateAction(){
        try{
            BankDaoServiceImpl bds = new BankDaoServiceImpl();
            bds.updateBank(bank);
            return "Allview";
        }catch(Exception e){
            e.printStackTrace();
            return  "Error";
        }
    }
    public String selectByIdAction(){
        PrintWriter wt = null;
        try{
            HttpServletResponse rs = ServletActionContext.getResponse();
            rs.setCharacterEncoding("utf-8");
            BankDaoServiceImpl bds = new BankDaoServiceImpl();
            bank = bds.selectById(id);
            String s = JSON.toJSONStringWithDateFormat(bank, "yyyy-MM-dd");
            wt = rs.getWriter();
            wt.print(s);
        }catch(Exception e){
            e.printStackTrace();
        }finally {
            wt.close();
        }
        return null;
    }

    public BankAction() {
    }

    public List<Bank> getBanks() {
        return banks;
    }

    public void setBanks(List<Bank> banks) {
        this.banks = banks;
    }

    public Bank getBank() {
        return bank;
    }

    public void setBank(Bank bank) {
        this.bank = bank;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }
}
