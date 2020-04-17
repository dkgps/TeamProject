package mini.rest;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//import com.hk.th.dao.ReplyDao;

import mini.dao.MiniDao;
import mini.dao.StoreDao;

@WebServlet("/del")
public class DeleteMember extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String floor=req.getParameter("floor");
		String location=req.getParameter("location");
		String number=req.getParameter("number");
		
		StoreDao md1 = StoreDao.getInstance();
		
		String check = md1.g_number(floor, location);
		
		
		
		
		
		
		if(number.equals(check)) {
		int result = md1.delete(floor, location);}
	}
}
