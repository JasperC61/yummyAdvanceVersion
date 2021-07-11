package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dao.memberDao;
import Model.member;


public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public LoginController() {
        super();
       
    }

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  
		 //從C:\web\Gjun4\src\main\webapp\index.jsp中username及password接收資料
		  String username=request.getParameter("username");
		  String password=request.getParameter("password");
		  //透過memberDao.query(username, password)方法取得值
		  member m=memberDao.query(username, password);
		  //宣告session生命週期
		  HttpSession session=request.getSession();
		  //如果有這個人
		  if(m!=null)
		  {    //就把值丟給session M增加生命週期,並將頁面導到member/loginSuccess.jsp
			  session.setAttribute("M", m);
			  response.sendRedirect("member/loginSuccess.jsp");
		  }else
		  {   //否則頁面導到member/loginError.jsp
			  response.sendRedirect("member/loginError.jsp");
		  }
		
	}

	

}
