package util;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.IOException;
import java.io.Reader;

public class MyBatisUtil {
	private static ThreadLocal<SqlSession> tol =  new ThreadLocal<SqlSession>();
	private static SqlSessionFactory factory;
	static{
		Reader reader = null;
		try {
			SqlSessionFactoryBuilder builder = new SqlSessionFactoryBuilder();
			reader = Resources.getResourceAsReader("mybatis-config.xml");
			factory = builder.build(reader);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				reader.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	public static SqlSession getSession(){
		SqlSession session = tol.get();
		if(session==null){
			session = factory.openSession();
			tol.set(session);
		}
		return session;
	}
	public static void close(SqlSession session){
		if(session != null){
			session.close();
			tol.remove();
		}
	}
}
