package sparkzone.service;

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
import sparkzone.dto.BDto;

@WebServlet("/editok")
public class EditOk extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest req, HttpServletResponse res) 
			throws ServletException, IOException {
		res.setContentType("text/html;charset=utf-8");
		req.setCharacterEncoding("utf-8");
		
		String id = req.getParameter("id");
		BDto dto = new BDto();
		Connection conn;
		DBConnect db = new DBConnect();
		dto.setId(Integer.parseInt(id));
		dto.setWriter(req.getParameter("writer"));
		dto.setPass(req.getParameter("pass"));
		dto.setTitle(req.getParameter("title"));
		dto.setContent(req.getParameter("content"));		
		int result = 0;
		try {
			conn = db.getConnection();
			JBoardDao dao = new JBoardDao(conn);
			result = dao.updateDB(dto);
			
		} catch (SQLException | NamingException e) {
			e.printStackTrace();
		}finally {
			db.closeConnection();
		}
		
		PrintWriter out = res.getWriter();
		String txt;
		if(result == 1) {
			txt = "���������� ������Ʈ �߽��ϴ�.";
	    }else {
		    txt = "������ �߻��߽��ϴ�. �����ڿ��� �����ϼ���.";
	    }
		String str = "<script>alert('"+txt+"'); " 
	                  + "location.href='contents.jsp?id="+id+"';"
	                  + "</script>";
        out.println(str);
}
	
	protected void doPost(HttpServletRequest req, HttpServletResponse res) 
			throws ServletException, IOException {
		
		doGet(req, res);
	}

}
