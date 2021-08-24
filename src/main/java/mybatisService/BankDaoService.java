package mybatisService;

import entity.Bank;

import java.util.List;

public interface BankDaoService {
    //查所有业务
    public List<Bank> selectAll();
    //查一个业务
    public Bank selectById(int id);
    //添加业务
    public void insertBank(Bank bank);
    //删除业务
    public void deleteBank(int id);
    //修改业务
    public void updateBank(Bank bank);
}
