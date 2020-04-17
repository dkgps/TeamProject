package com.hk.th;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hk.th.action.Action;
import com.hk.th.action.ActionForward;
import com.hk.th.action.QnaDeleteAction;
import com.hk.th.action.QnaListAction;
import com.hk.th.action.QnaUpFrmAction;
import com.hk.th.action.QnaUpdateAction;
import com.hk.th.action.QnaViewAction;
import com.hk.th.action.QnaWriteFrmAction;
import com.hk.th.action.QnaWriteProAction;


public class QnaController extends HttpServlet{

	public void doGet(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException{
			doProcess(request, response);
			//doTest(request, response);
	}
	
	public void doProcess(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException{
		
		
		String requestURI = request.getRequestURI();
		String contextPath = request.getContextPath();//URI의 하위경로
		String command = requestURI.substring(request.getContextPath().length());
		//System.out.println("콘솔출력 requestURI: "+requestURI); //콘솔창
		//System.out.println("콘솔출력 contextPath: "+contextPath);
		System.out.println("콘솔출력 command: "+command);
		//response.setContentType("text/html; charset=utf-8");
		/*RequestDispatcher rd; //화면결과를 넘겨주는 역할*/		
		
		
		Action action = null;
		ActionForward forward = null;
		
		if(command.equals("/qnalist.go")) {
			
			action = new QnaListAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
					
		
		}else if(command.equals("/qnawritefrm.go")) {
			
			action = new QnaWriteFrmAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
			}else if(command.equals("/qnawritepro.go")) {
				action = new QnaWriteProAction();
				try {
					forward = action.execute(request, response);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}else if(command.equals("/qnaview.go")) {
					action = new QnaViewAction();
					try {
						forward = action.execute(request, response);
					} catch (Exception e) {
						e.printStackTrace();
					}
			}else if(command.equals("/qnaupfrm.go")) {
					action = new QnaUpFrmAction();
					try {
					forward = action.execute(request, response);
					} catch (Exception e) {
						e.printStackTrace();
					}
			}else if(command.equals("/qnaupdate.go")) {
				action = new QnaUpdateAction();
				try {
				forward = action.execute(request, response);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}else if(command.equals("/qnadel.go")) {
				action = new QnaDeleteAction();
				try {
				forward = action.execute(request, response);
				} catch (Exception e) {
					e.printStackTrace();
				}
		}else {
			
		}
	
		if (forward.isRedirect() ) { //리다이렉션 할 경우
			response.sendRedirect(forward.getPath());
		}else {
			RequestDispatcher dispatch; 
			dispatch=getServletContext().getRequestDispatcher(forward.getPath());
			dispatch.forward(request, response);
		}
		
	}
	
		//response.setContentType("text/html; charset=utf-8");
		//System.out.println("콘솔출력: controller 테스트"); //콘솔창
		
		//RequestDispatcher rd; //화면결과를 넘겨주는 역할
		//rd=getServletContext().getRequestDispatcher("/WEB-INF/jsp/test.jsp");
		//rd.forward(request, response);
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
	throws ServletException, IOException {
			//doProcess(request, response);
	}
	
	/*private void doTest(HttpServletRequest request, HttpServletResponse response) 
	throws ServletException, IOException {
				response.setContentType("text/html; charset=utf-8");
				System.out.println("콘솔출력: controller 테스트"); //콘솔창
				
				RequestDispatcher rd; //화면결과를 넘겨주는 역할
				rd=getServletContext().getRequestDispatcher("/WEB-INF/jsp/test.jsp");
				rd.forward(request, response);
		}*/
	
	}
	

