package controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.Action;
import project.UserDAO;
import project.UserDTO;

public class JoinAction implements Action{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		UserDTO user = null;
		UserDAO userDao = UserDAO.getInstance();
		
		String userId = request.getParameter("user_id");
		String userPw = request.getParameter("user_pw");
		String name = request.getParameter("user_name");
		String mobile = request.getParameter("user_phone");
		
		user = new UserDTO(userId, userPw, name, mobile);
		
		String url = "";
		
		if(!userDao.addUser(user)) {
			System.out.println("회원가입 실패");
			url = "join.jsp";
		}
		else {
			System.out.println("회원가입 성공");
			url = "login.jsp";
		}
		request.getRequestDispatcher(url).forward(request, response);
		
	}

}
