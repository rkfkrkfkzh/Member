package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.MemberDao;
import model.MemberVO;

/**
 * Servlet implementation class LoginSerlvet
 */
public class LoginSerlvet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginSerlvet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8"); // 들어오는 파라미터를 UTF-8로 해석
		response.setContentType("text/html;charset=utf-8"); //servlet은 자바 파일 이므로 응답을 할때 반드시 html로 응답하겠다는 
		// ContetType를 지정하며 스트림을 이용해 태그를 보내줘야함 
		String id = request.getParameter("userId");
		String password = request.getParameter("userPass");
		MemberDao dao = new MemberDao();
		try {
			MemberVO vo = dao.login(id, password);
			String path = "login_fail.jsp";
			if (vo != null) {
				HttpSession session = request.getSession();
				session.setAttribute("loginInfo", vo);
				path = "login_ok.jsp";
			}
			// request를 덜 유지하는쪽이 서버쪽에 유용하다.
			response.sendRedirect(path);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
