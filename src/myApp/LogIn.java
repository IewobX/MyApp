package myApp;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LogIn
 */
@WebServlet("/LogIn")
public class LogIn extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LogIn() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/**
		 * @author xubowei
		 * 设置编码格式utf-8
		 */
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		/**
		 * @author xubowei
		 * 获取前端数据
		 * */
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		/**
		 * @author xubowei
		 * 判断登陆者身份
		 * */
		System.out.println(email.equals("admin")&&password.equals("admin"));
		if(email.equals("admin")&&password.equals("admin")) {
//			System.out.println(email+password);
//			response.getWriter().print("admin");	//管理员
			
			UserDao userDao = new UserDao();
			ArrayList<User> list = userDao.getAllUsers();
			System.out.println(list);
//			response.sendRedirect("./admin.jsp");
			request.setAttribute("list", list);
			request.getRequestDispatcher("admin.jsp").forward(request, response);
		}
		else {
			UserDao userDao = new UserDao();
			Boolean checker = userDao.checkUser(email, password);
//			System.out.println(checker);
			if(!checker) {
				response.getWriter().print("false");	//账号密码不符
			}
			else {
				response.getWriter().print("true");		//成功
			}
		}
	}

}
