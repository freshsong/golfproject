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
import javax.servlet.http.HttpSession;

import sparkzone.dao.DBConnect;
import sparkzone.dao.JBoardDao;
import sparkzone.dao.MembersDao;
import sparkzone.dto.BDto;
import sparkzone.dto.MDto;

@WebServlet("/insert")
public class InsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		
		String mode = request.getParameter("mode");
		DBConnect db = new DBConnect();
		PrintWriter out = response.getWriter();
		
		try {
			HttpSession session =request.getSession(true);
			Connection conn = db.getConnection();
			JBoardDao dao = new JBoardDao(conn);
			MembersDao mdao = new MembersDao(conn);
			BDto dto = new BDto();
			MDto mdto = new MDto();
			int result = 0;
			String userid = (String) session.getAttribute("userid"); 
			String txt = "";
			String link ="";
			
			if("rewrite".equals(mode)) {
				dto.setWriter(request.getParameter("writer"));
				dto.setPass(request.getParameter("pass"));
				dto.setTitle(request.getParameter("title"));
				dto.setContent(request.getParameter("content"));
				//dto�� �ִ��۾�
				if(request.getParameter("refid") != null){
					dto.setRefid(Integer.parseInt(request.getParameter("refid")));
				   }else{
					   dto.setRefid(Integer.parseInt(request.getParameter("id")));
				   }
				dto.setDepth(Integer.parseInt(request.getParameter("depth"))+1);
				dto.setRenum(Integer.parseInt(request.getParameter("renum")));
				result = dao.insertDB(dto);
				txt = "�亯���� ����ϴ�.";
				link = "contents.jsp?id=" + result +"&cpg=1";
			}else if("join".equals(mode)) {
				mdto.setUserid(request.getParameter("userid"));
				mdto.setUserpass(request.getParameter("userpass"));
				mdto.setUsername(request.getParameter("username"));
				mdto.setUseremail(request.getParameter("useremail"));
				mdto.setUsertel(request.getParameter("usertel"));
				mdto.setZipcode(Integer.parseInt(request.getParameter("zipcode")));
				mdto.setAddr1(request.getParameter("addr1"));
				mdto.setAddr2(request.getParameter("addr2"));
				mdto.setUserlink(request.getParameter("userlink"));
				result = mdao.insertDB(mdto);
				txt = mdto.getUsername() + "�� ȯ���մϴ�. ȸ�������� �Ϸ� �Ǿ����ϴ�. �α����ϼ���.";
				link = "index.jsp";
			}else {
				dto.setWriter(request.getParameter("writer"));
				dto.setPass(request.getParameter("pass"));
				dto.setTitle(request.getParameter("title"));
				dto.setContent(request.getParameter("content"));
				dto.setDepth(0);
				dto.setUserid(userid);
				result = dao.insertDB(dto);
				txt = "���� ����߽��ϴ�.";
				link = "contents.jsp?id=" + result +"&cpg=1";
			}
			if(result == 0) {
				txt = "�� �ۼ��� ������ �߻��߽��ϴ�.";
			}
			String str = "<script>alert('"+txt+"'); " 
	                  + "location.href='"+link+"';"
	                  + "</script>";
			out.println(str);
		} catch (SQLException | NamingException e) {
			e.printStackTrace();
		}
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
