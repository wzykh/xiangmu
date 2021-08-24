package mybatis;

import entity.Bank;
import entity.Student;

import java.util.List;

public interface BankDao {
    //查所有
    public List<Bank> selectAll();
    //查一个
    public Bank selectById(int id);
    //添加
    public void insertBank(Bank bank);
    //删除
    public void deleteBank(int id);
    //修改
    public void updateBank(Bank bank);
    public List<Student> selectStudentAll();
}
