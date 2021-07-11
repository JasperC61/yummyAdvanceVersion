package Dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import Model.member;

public class memberDao implements implDao{

	public static void main(String[] args) {
		
		System.out.println(memberDao.query("Tommy"));
		
		
		
		/*
		//透過queryAll()查詢到資料丟到l中
		List<Object> l=new memberDao().queryAll();
		//將接收到資料逐筆印出
		for(Object o:l)
		{
			member m=(member)o;
			System.out.println(m.getId()+"\t"+m.getUsername()+"\t"+m.getName());
		}
		
	
		System.out.println("----------------------------------------------------");
		//List 轉 Array
		member[] m=l.toArray(new member[l.size()]);
		System.out.println(m[0].getUsername());
		*/
		
		
		/*
		//類似sql :select * from member,但底下是JPQL語法(JPA的sql語法)
		//String JPQL="select e from member e";
		//String JPQL="select e from member e where e.username='a'";
		//String JPQL="select e from member e where e.id>=10 and e.id<=15";
		//String JPQL="select e from member e order by e.id desc";
		//String JPQL="select e from member e where e.username='a' order by e.id desc";
		//尋找 index 5 to 10資料
		String JPQL="select e from member e where e.id>=?1 and e.id<=?2";
		
		//從implDao.getDB()調用方法產生em,即可連線
		EntityManager em=implDao.getDB();
		//透過JPA EntityManager 的createQuery(String qlString),丟入JPQL語法
		Query q=em.createQuery(JPQL);
		//尋找 index 5 to 10資料,給值
		q.setParameter(1, 5);
		q.setParameter(2, 10);
		//將JPA產生的List q利用串接丟到Java.API中List中
		List<member> l=q.getResultList();
		//將接收到資料逐筆印出
		for (member m:l) {
			System.out.println(m.getId()+"\t"+m.getUsername()+"\t"+m.getName());
			
			
		}
		
		*/
		
		
		//new memberDao().delete(4);
		
		
		
		
		/*
		修改第10筆資料內容,先調用查詢方法
		member m=(member) new memberDao().query(10);
		m.setName("lin");
		m.setUsername("Betty");
		new memberDao().update(m);
		*/
		
		/*查詢第一筆資料
		//System.out.println(new memberDao().query(1));
		member m=(member) new memberDao().query(1);
		System.out.println(m.getUsername()+"\t"+m.getPassword());
		*/
		
		/*
		  member m=new member("ha","20","bbb","dd","32","33");
		  new memberDao().add(m);
		*/
		
		
		
		
        /*調用方法給值
		member m=new member("a","1","q","dd","12","33");
		//從implDao.getDB()調用方法產生em,即可連線
		EntityManager em=implDao.getDB();
		//開始產生傳輸資料交易模式
		EntityTransaction t=em.getTransaction();
		t.begin();	//可以做C,U,D動作
		em.persist(m);
		t.commit();
		em.close();
		*/
	}

	@Override
	public void add(Object o) {
		member m=(member)o;
		//從implDao.getDB()調用方法產生em,即可連線
		EntityManager em=implDao.getDB();
		//開始產生傳輸資料交易模式
				EntityTransaction t=em.getTransaction();
				t.begin();	//可以做C,U,D動作
				em.persist(m);
				t.commit();
				em.close();

	}

	@Override
	public Object query(int id) {
		//從implDao.getDB()調用方法產生em,即可連線
		EntityManager em=implDao.getDB();
		//調用find()方法,給id與member.class(主鍵,class)泛型
		member m=em.find(member.class, id);
		return m;
	}
    
	
	//判斷帳號與密碼
	public static member query(String username,String password) {
		 member m=null;
		 String JPQL="select m from member m where m.username=?1 and m.password=?2";
		//從implDao.getDB()調用方法產生em,即可連線
			EntityManager em=implDao.getDB();
			Query q=em.createQuery(JPQL);
			q.setParameter(1, username);
			q.setParameter(2, password);
			List<member> l=q.getResultList();
			//丟入username不為空(有這個人)
			if(l.size()!=0) 
			{
				
		        //位置轉位置
				for(member o:l)
				{
					m=o;
				}
			}
			return m;	 
	}
	
	
	//判斷是否有此帳號
	public static member query(String username) {
		 member m=null;
		 String JPQL="select m from member m where m.username=?1";
		//從implDao.getDB()調用方法產生em,即可連線
			EntityManager em=implDao.getDB();
			Query q=em.createQuery(JPQL);
			q.setParameter(1, username);
			
			List<member> l=q.getResultList();
			//丟入username不為空(有這個人)
			if(l.size()!=0) 
			{
				
		        //位置轉位置
				for(member o:l)
				{
					m=o;
				}
			}
			return m;	 
	}
	
	
	
	
	
	
	
	
	@Override
	public void update(Object o) {
		//從implDao.getDB()調用方法產生em,即可連線
		EntityManager em=implDao.getDB();
		//開始產生傳輸資料交易模式
		EntityTransaction t=em.getTransaction();
		//可以做C,U,D動作
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
	    //開始產生傳輸資料交易模式
		EntityTransaction t=em.getTransaction();
		//刪除第(?)id筆資料內容,先調用查詢find()方法,找出該資料
		member m=em.find(member.class, id);
		//可以做C,U,D動作
		t.begin();
		//JPA中刪除的方法
		em.remove(m);
		t.commit();
	    em.close();
	}

	@Override
	public List<Object> queryAll() {
		//從implDao.getDB()調用方法產生em,即可連線
		EntityManager em=implDao.getDB();
		//類似sql :select * from member,但底下是JPQL語法(JPA的sql語法)
		String JPQL="select e from   member e";
		//透過JPA EntityManager 的createQuery(String qlString),丟入JPQL語法
		Query q=em.createQuery(JPQL);
		//將JPA產生的List q利用串接丟到Java.API中List中(串接)
		List<Object> l=q.getResultList();
		//返回l丟到main執行
		return l;
	}}