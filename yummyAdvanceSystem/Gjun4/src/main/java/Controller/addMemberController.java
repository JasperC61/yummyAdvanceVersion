package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.memberDao;
import Model.member;


public class addMemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public addMemberController() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//從addMember丟值過來
		String userName=request.getParameter("username");
		//透過memberDao.query()方法判定內容是否為空
		if(memberDao.query(userName)==null)
		{   
			//若有該筆資料則直接抓後續資料
			String Name=request.getParameter("name");
			String passWord=request.getParameter("password");
			String Address=request.getParameter("address");
			String Phone=request.getParameter("phone");
			String Mobile=request.getParameter("mobile");
			//產生新的member()
			member m=new member(userName,passWord,Name,Address,Phone,Mobile);	
			//新增資料
			new memberDao().add(m);			
			//顯示新增成功在網頁上
			response.sendRedirect("member/addMemberSuccess.jsp");
		}
		else
		{   //否則顯示新增失敗在網頁上
			response.sendRedirect("member/addMemberError.jsp");
		}
		
	}

}