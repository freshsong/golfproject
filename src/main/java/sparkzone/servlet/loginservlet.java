package sparkzone.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.NamingException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import sparkzone.dao.DBConnect;
import sparkzone.dao.MembersDao;
import sparkzone.dto.MDto;


@WebServlet("/login")
public class loginservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection conn = null; //�ʵ�� �����
	DBConnect db = new DBConnect(); //�ʵ�� �����
    
    public loginservlet() {
        super();       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();		
		String[] rid = request.getParameterValues("rid"); //üũ�ڽ� ����Ÿ������ �ޱ�
		String uid = request.getParameter("uid");         //aside�� name�� �޾ƿ���
		String upass = request.getParameter("upass");     //aside�� name�� �޾ƿ���
		
		if( rid != null) {
			Cookie remId = new Cookie("uid", uid);
			response.addCookie(remId);
		}
		
		
		try {
			conn = db.getConnection();
			MembersDao dao = new MembersDao(conn); //��ü����
			MDto mdto = dao.login(uid, upass);  //�α��� �������йޱ�
			if(mdto.getId() != 0) {                   //�α��� �������� ����
			    //�α��� ���� , ���� ��ü ����
				//System.out.println("�α��� ����");
				HttpSession session = request.getSession();
				session.setAttribute("mid", mdto.getId());
				session.setAttribute("userid", mdto.getUserid());
				session.setAttribute("useremail", mdto.getUseremail());
				session.setAttribute("username", mdto.getUsername());
				session.setAttribute("role", mdto.getRole());
				//������������ ��������
				response.sendRedirect("index.jsp");
			}else {
			    //�α��� ����	
				System.out.println("�α��� ����");
				String scr = "<script>alert('���̵� �Ǵ� ��й�ȣ�� Ʋ�Ƚ��ϴ�. �ٽ� Ȯ�����ּ���.');"
						        + "location.href='index.jsp';</script>"; 
				out.print(scr);
			}			
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (NamingException e) {
			e.printStackTrace();
		}
	}

}
