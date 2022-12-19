package controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import controller.Action;
import project.UserDAO;
import project.UserDTO;

public class LoginAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		
		UserDTO user = null;
		UserDAO userDao = UserDAO.getInstance();
		
		String userId = request.getParameter("user_id");
		String userPw = request.getParameter("user_pw");
		
		user = new UserDTO(userId, userPw);
		
		String url = "";
		
		if(!userDao.loginCheck(user)) {
			url = "index.jsp";
			
			session.setAttribute("log", userDao.getId(userId));
			session.setAttribute("userName", userDao.getName(userId));
			
			System.out.println("LoginAction 성공");
		} else {
			url = "login.jsp";
			System.out.println("LoginAction 실패");
		}
		request.getRequestDispatcher(url).forward(request, response);
		
	}

}
