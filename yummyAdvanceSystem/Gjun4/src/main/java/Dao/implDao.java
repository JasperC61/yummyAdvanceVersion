package Dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public interface implDao {

	//連線方法
	static EntityManager getDB()
	{
		//測試persistence.xml物件是否產生
		EntityManagerFactory  emf=Persistence.createEntityManagerFactory("gjun");
		//測試class是否mapping成功
		//EntityManager可以做CRUD
		EntityManager em=emf.createEntityManager();
				return em;
				
	}
	
	//新增物件
	 void add(Object o);
	
	//查詢物件
	  Object query(int id);
	  List<Object> queryAll();
	//修改物件
	 void update (Object o);
	
	
	//刪除物件
	void delete(int id);
}