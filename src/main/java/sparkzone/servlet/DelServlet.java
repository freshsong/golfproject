package sparkzone.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.NamingException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sparkzone.dao.DBConnect;
import sparkzone.dao.JBoardDao;


@WebServlet("/del")
public class DelServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		String id = request.getParameter("id");
		Connection conn = null;
		DBConnect db = new DBConnect();
		
		int result = 0;
		try {
			conn = db.getConnection();
			JBoardDao dao = new JBoardDao(conn);
			result = dao.deleteDB(id);
			
		} catch (SQLException | NamingException e) {
			e.printStackTrace();
		}finally {
			db.closeConnection();
		}
		
		String txt;
		if(result == 1) {
			txt = "���� �߽��ϴ�.";
	    }else {
		    txt = "������ �߻��߽��ϴ�. �����ڿ��� �����ϼ���.";
	    }
		String str = "<script>alert('"+txt+"'); " 
	                  + "location.href='index.jsp';"
	                  + "</script>";
        out.println(str);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
