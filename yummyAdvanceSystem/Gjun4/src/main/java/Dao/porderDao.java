package Dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import Model.porder;
//纂寫CRUD
public class porderDao implements implDao{

	public static void main(String[] args) {
		
		System.out.println(porderDao.QuerySum(1000,2000));
		//System.out.println(porderDao.QueryAll());
		
		/*測試新增的功能----------------------------------
		  porder p=new porder("A01",1,2,3);
		  new porderDao().add(p); 
		 */
		
		/*測試查詢資料功能--------------------------------
		porder p=(porder) new porderDao().query(1);
		System.out.println(p.getDesk());
		*/
		
		/*測試查詢所有桌號的資料----------------------------
		List<Object> l=new porderDao().queryAll();
		for(Object o:l)
		{
			porder p=(porder) o;
			System.out.println(p.getId()+"\t"+p.getDesk());
		}
		
		*/
		
		/*測試修改方法---------------------------------
		porder p=(porder) new porderDao().query(38);
		p.setA(10);
		p.getSum();
		new porderDao().update(p);
		
		*/
		
		 // new porderDao().query(p);
		
		/*測試刪除資料的方法-----------------------------
		new porderDao().delete(1);
		
		*/
	}





	@Override
	public void add(Object o) {
		//從implDao.getDB()調用方法產生em,即可連線
		EntityManager em=implDao.getDB();
		//開始產生傳輸資料交易模式
		EntityTransaction t=em.getTransaction();
		t.begin();  //可以做C,U,D動作
		em.persist(o);
		t.commit();
		em.close();
	}

	@Override
	public Object query(int id) {
		//從implDao.getDB()調用方法產生em,即可連線
		EntityManager em=implDao.getDB();
		//調用find()方法,給id與member.class(主鍵,class)泛型
		porder p=em.find(porder.class, id);
		
		return p;
	}

	@Override
	public List<Object> queryAll() {
		//類似 sql:select * from porder(用JPQL語法寫的)
		String JPQL="select  p from porder p";
		//從implDao.getDB()調用方法產生em,即可連線
		EntityManager em=implDao.getDB();
		//透過JPA EntityManager 的createQuery(String qlString),丟入JPQL語法
		Query q=em.createQuery(JPQL);
		//將JPA產生的List q利用串接丟到Java.API中List中(串接)
		List<Object> l=q.getResultList();
		return l;
	}
	
   
    	
    
	
	
	
	
	
	
	//查詢所有訂單內容
	public static String QueryAll()
	{   //類似 sql:select * from porder(用JPQL語法寫的) 		
		String JPQL="select  p from porder p";
		//從implDao.getDB()調用方法產生em,即可連線
		EntityManager em=implDao.getDB();
		//透過JPA EntityManager 的createQuery(String qlString),丟入JPQL語法
		Query q=em.createQuery(JPQL);
		//將JPA產生的List q利用串接丟到Java.API中List中(串接)
		List<porder> l=q.getResultList();
		
		String sum="";
		
		//逐筆將訂單內容取出
		for(porder p:l)
		{   //做字串連接
			sum=sum+"<tr><td>"+p.getId()+
					"<td>"+p.getDesk()+
					"<td>"+p.getA()+
					"<td>"+p.getB()+
					"<td>"+p.getC()+
					"<td>"+p.getSum()+"\n";
		}
		
		return sum;
	}
		
	
	    //查詢總價格,輸入金額範圍
		public static String QuerySum(int start,int end)
		{   
			String JPQL="select p from porder p where p.sum>=?1 and p.sum<=?2";
			EntityManager em=implDao.getDB();
			Query q=em.createQuery(JPQL);
			q.setParameter(1, start);
			q.setParameter(2, end);
			
			List<porder> l=q.getResultList();
			
			String sum="";
			
			for(porder p:l)
			{
				sum=sum+"<tr><td>"+p.getId()+
						"<td>"+p.getDesk()+
						"<td>"+p.getA()+
						"<td>"+p.getB()+
						"<td>"+p.getC()+
						"<td>"+p.getSum()+"\n";
			}	
			
			return sum;
		}

		
		
		
		
		
		


	@Override
	public void update(Object o) {
		//從implDao.getDB()調用方法產生em,即可連線
		EntityManager em=implDao.getDB();
		//開始產生傳輸資料交易模式
		EntityTransaction t=em.getTransaction();
		t.begin();
		//JPA中修改的方法
		em.merge(o);
		t.commit();
		em.close();
		
	}

	@Override
	public void delete(int id) {
		//從implDao.getDB()調用方法產生em,即可連線
		EntityManager em=implDao.getDB();
		//刪除第(?)id筆資料內容,先調用查詢find()方法,找出該資料
		porder p=em.find(porder.class, id);
		//開始產生傳輸資料交易模式
		EntityTransaction t=em.getTransaction();
		t.begin();
		//JPA中刪除的方法
		em.remove(p);
		t.commit();
		em.close();
		
	}

}





