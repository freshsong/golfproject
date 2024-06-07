package sparkzone.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import sparkzone.dto.MDto;

public class MembersDao {

	//�ʵ�
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	Connection conn;
	
	//�����ڿ��� db ����
	public MembersDao(Connection conn) {
		this.conn = conn;
	}

	//ȸ������
	public int insertDB(MDto dto) {
		int num = 0;
		String sql = "insert into members "
				+ " (userid, userpass, username, useremail, usertel, zipcode, addr1, addr2, userlink) "
				+ " values (?, ?, ?, ?, ?, ?, ?, ?, ?)";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getUserid());
			pstmt.setString(2, dto.getUserpass());
			pstmt.setString(3, dto.getUsername());
			pstmt.setString(4, dto.getUseremail());
			pstmt.setString(5, dto.getUsertel());
			pstmt.setInt(6, dto.getZipcode());
			pstmt.setString(7, dto.getAddr1());
			pstmt.setString(8, dto.getAddr2());
			pstmt.setString(9, dto.getUserlink());
			System.out.println(pstmt);
			num = pstmt.executeUpdate();
			
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			  try {
					if(pstmt != null) pstmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
		}
		return num;
	}
	
	//ȸ���α���
	public MDto login(String userid, String userpass) {
		String sql = "select * from members where userid=? and userpass=?";
		MDto dto = new MDto(); //���� ���� MDto�� �� �ֱ����� ����
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,  userid);
			pstmt.setString(2,  userpass);
			rs = pstmt.executeQuery();
			if(rs.next()) {			
			   dto.setId(rs.getInt("id"));
			   dto.setUserid(rs.getString("userid"));
			   dto.setUseremail(rs.getString("useremail"));
			   dto.setUsername(rs.getString("username"));
			   dto.setRole(rs.getString("role"));
			}
		}catch(SQLException e){
			e.printStackTrace();
		}finally {
			  try {
					if(pstmt != null) pstmt.close();
					if(rs != null) rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
		}
		System.out.println(dto.getId());
		return dto;
	}
	
	
	//ȸ���ߺ� ����
	public boolean findUser(String column, String uname) {
		boolean res = true;
		String sql = "select * from members where "+ column + "= ?";
		try {
		   pstmt = conn.prepareStatement(sql);
		   pstmt.setString(1, uname);	
		  // System.out.println(pstmt);
		   rs = pstmt.executeQuery();
		   if(rs.next()) {
			   res = false;
		   }
		}catch(SQLException e) {
		      e.printStackTrace();
	    }finally {
		  try {
			if(pstmt != null) pstmt.close();
		  } catch (SQLException e) {
			  e.printStackTrace();
		  }
		}
		//System.out.println(res);
		return res;
	}
	
	
	//ȸ������ ����
		public int updateDB(MDto dto) {
			int num1 = 0;
			String sql = "update members set userpass= ?, useremail= ?, usertel= ?, userzipcode= ?, addr1= ?, addr2= ?, userlink= ? where id =?";
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, dto.getUserpass());
				pstmt.setString(2, dto.getUseremail());
				pstmt.setString(3, dto.getUsertel());
				pstmt.setInt(4, dto.getZipcode());
				pstmt.setString(5, dto.getAddr1());
				pstmt.setString(6, dto.getAddr2());
				pstmt.setString(7, dto.getUserlink());
				System.out.println(pstmt);
				num1 = pstmt.executeUpdate();				
			}catch(SQLException e) {
				e.printStackTrace();
			}finally {
				  try {
						if(pstmt != null) pstmt.close();
					} catch (SQLException e) {
						e.printStackTrace();
					}
			}
			return num1;
		}
	
}
