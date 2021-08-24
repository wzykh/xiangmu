package mybatisService;

import entity.Bank;
import mybatis.BankDao;
import org.apache.ibatis.session.SqlSession;
import util.MyBatisUtil;

import java.util.List;

public class BankDaoServiceImpl implements BankDaoService {
    @Override
    public List<Bank> selectAll() {
        SqlSession session = null;
        try{
            session = MyBatisUtil.getSession();
            BankDao m = session.getMapper(BankDao.class);
            List<Bank> banks = m.selectAll();
            return banks;
        }catch(Exception e){
            e.printStackTrace();
            throw new RuntimeException("查所有业务失败");
        }finally {
            MyBatisUtil.close(session);
        }
    }

    @Override
    public Bank selectById(int id) {
        SqlSession session = null;
        try{
            session = MyBatisUtil.getSession();
            BankDao m = session.getMapper(BankDao.class);
            Bank bank = m.selectById(id);
            return bank;
        }catch(Exception e){
            e.printStackTrace();
            throw new RuntimeException("查一个业务失败");
        }finally {
            MyBatisUtil.close(session);
        }
    }

    @Override
    public void insertBank(Bank bank) {
        SqlSession session = null;
        try{
            session = MyBatisUtil.getSession();
            BankDao m = session.getMapper(BankDao.class);
            m.insertBank(bank);
            session.commit();
        }catch(Exception e){
            session.rollback();
            e.printStackTrace();
            throw new RuntimeException("添加业务失败");
        }finally {
            MyBatisUtil.close(session);
        }
    }

    @Override
    public void deleteBank(int id) {
        SqlSession session = null;
        try{
            session = MyBatisUtil.getSession();
            BankDao m = session.getMapper(BankDao.class);
            m.deleteBank(id);
            session.commit();
        }catch(Exception e){
            session.rollback();
            e.printStackTrace();
            throw new RuntimeException("删除业务失败");
        }finally {
            MyBatisUtil.close(session);
        }
    }

    @Override
    public void updateBank(Bank bank) {
        SqlSession session = null;
        try{
            session = MyBatisUtil.getSession();
            BankDao m = session.getMapper(BankDao.class);
            m.updateBank(bank);
            session.commit();
        }catch(Exception e){
            session.rollback();
            e.printStackTrace();
            throw new RuntimeException("查所有业务失败");
        }finally {
            MyBatisUtil.close(session);
        }
    }
}
