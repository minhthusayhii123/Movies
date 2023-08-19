package com.poly.controller.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.poly.constant.SessionAttr;
import com.poly.entity.User;
import com.poly.service.UserService;
import com.poly.service.impl.UserServiceImpl;

@WebServlet(urlPatterns = { "/admin/user" }, name = "UserControllerOfAdmin")
public class UserController extends HttpServlet {
	private static final long serialVersionUID = 3968414433292121855L;
	private UserService UserService = new UserServiceImpl();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		User currentUser = (User) session.getAttribute(SessionAttr.CURRENT_USER);
		if (currentUser != null && currentUser.getIsAdmin() == Boolean.TRUE) {
			String action = req.getParameter("action");
			switch (action) {
			case "view":
				doGetOverView(req, resp);
				break;
			case "delete":
				doGetDelete(req, resp);
				break;
			case "add":
				req.setAttribute("isEdit", false);
				doGetAdd(req, resp);
				break;
			case "edit":
				req.setAttribute("isEdit", true);
				doGetEdit(req, resp);
				break;
			}
		} else {
			resp.sendRedirect("index");
		}
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		User currentUser = (User) session.getAttribute(SessionAttr.CURRENT_USER);
		if (currentUser != null && currentUser.getIsAdmin() == Boolean.TRUE) {
			String action = req.getParameter("action");
			switch (action) {
			case "add":
				doPostAdd(req, resp);
				break;
			case "edit":
				doPostEdit(req, resp);
				break;
			}
		} else {
			resp.sendRedirect("index");
		}
	}

	private void doGetOverView(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<User> users = UserService.findAll();
		req.setAttribute("users", users);
		req.getRequestDispatcher("/views/admin/user-overview.jsp").forward(req, resp);
	}

	private void doGetDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("application/json");
		String username = req.getParameter("username");
		User userDeleted = UserService.delete(username);
		if (userDeleted != null) {
			resp.setStatus(204);
		} else {
			resp.setStatus(400);
		}
	}

	private void doGetAdd(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<User> users = UserService.findAll();
		req.setAttribute("users", users);
		req.getRequestDispatcher("/views/admin/user-edit.jsp").forward(req, resp);
	}

	private void doGetEdit(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String username = req.getParameter("username");
		User user = UserService.findByUsername(username);
		req.setAttribute("user", user);

		req.setAttribute("item", user);
		req.getRequestDispatcher("/views/admin/user-edit.jsp").forward(req, resp);
	}

	private void doPostAdd(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("application/json");
		String username = req.getParameter("username");
		String fullname = req.getParameter("fullname");
		String email = req.getParameter("email");
		String password = req.getParameter("password");

		User userReturn = UserService.register(username, password, fullname, email);
		
		if (userReturn != null) {
			resp.setStatus(204);
		} else {
			resp.setStatus(400);
		}
	}

	private void doPostEdit(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("application/json");
		String username = req.getParameter("newUsername");
		String fullname = req.getParameter("fullname");
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		String usernameOrigin = req.getParameter("usernameOrigin");

		User user = UserService.findByUsername(usernameOrigin);
		user.setUsername(username);
		user.setFullname(fullname);
		user.setEmail(email);
		user.setPassword(password);

		User UserReturn = UserService.update(user);
		if (UserReturn != null) {
			resp.setStatus(204);
		} else {
			resp.setStatus(400);
		}
	}
}
