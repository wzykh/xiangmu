package test;

import entity.Student;
import mybatis.BankDao;
import org.apache.ibatis.session.SqlSession;
import util.MyBatisUtil;

import java.util.List;

public class Test {
    @org.junit.Test
    public void test1(){
        SqlSession session = MyBatisUtil.getSession();
        BankDao bd = session.getMapper(BankDao.class);
        List<Student> students = bd.selectStudentAll();
        for (Student student : students) {
            System.out.println(student);
        }
    }
}
