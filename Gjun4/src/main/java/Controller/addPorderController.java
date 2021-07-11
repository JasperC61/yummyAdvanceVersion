package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dao.porderDao;
import Model.porder;

public class addPorderController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public addPorderController() {
        super();
       
    }

	
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
				
		        //先產生session,從confirm.jsp取的session ,P資料
		        HttpSession session=request.getSession();
		        //轉型(由物件轉成porder)
				porder p=(porder) session.getAttribute("P");
				//建檔到資料庫
				new porderDao().add(p);
				//顯示到porder/finish.jsp
				response.sendRedirect("porder/finish.jsp");
}
}