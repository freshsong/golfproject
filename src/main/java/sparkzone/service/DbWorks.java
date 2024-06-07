package sparkzone.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.NamingException;

import sparkzone.dao.DBConnect;
import sparkzone.dao.JBoardDao;
import sparkzone.dto.BDto;

public class DbWorks {
	
  //�ʵ����
  private int limitPage;
  private int listCount;
  private String sname;
  private String svalue;
  private Connection conn;
  private DBConnect db = new DBConnect(); //dbconnection �ϰ� dbconnect �������°� �갡 ����
  private String id;
  
  //�����ڿ��� �ʱ�ȭ (2����)
  /*
  public DbWorks(int limitpage, int listCount) {
	  //�ʱ�ȭ
	  this.limitPage = limitPage;
	  this.listCount = listCount;
  }
  */
  //�����ڿ����ε�
  public DbWorks() {}
  
  //4������ ������ ������ �����ε� (4����)
  public DbWorks(int limitPage, int listCount, String sname, String svalue) {
	  //�ʱ�ȭ
	  this.limitPage = limitPage;
	  this.listCount = listCount;
	  this.sname = sname;
	  this.svalue = svalue;
  } 
  
  
   public String getId() {
	 return id;
   }
   public void setId(String id) {
	 this.id = id;
   }



//��ü �� ����
  public int getAllSelect() {
	  int allCount = 0;
	  try {
		conn = db.getConnection();
		JBoardDao dao = new JBoardDao(conn);
		if(sname == null) {
			allCount = dao.AllSelectDB();
		}else {
			allCount = dao.AllSelectDB(sname, svalue);
		}
	} catch (SQLException | NamingException e) {
		e.printStackTrace();
	}finally {
		db.closeConnection();
	}
	return allCount;
  }
  
  
  //select�� �Ű����� �����ʿ� ����
  //�Ϲ� ����¡�� �ִ� ��� (2����)
  public ArrayList<BDto> getList(){
	  ArrayList<BDto> lists = null;
	  try {
			conn = db.getConnection();
			JBoardDao dao = new JBoardDao(conn);
			lists = dao.selectDB(limitPage, listCount);
		} catch (SQLException | NamingException e) {
			e.printStackTrace();
		}finally {
			db.closeConnection();
		}
	  return lists;
  }
  
  //�˻� ��� (4����)
  public ArrayList<BDto> getSearchList(){
	  ArrayList<BDto> lists = null;
	  try {
			conn = db.getConnection();
			JBoardDao dao = new JBoardDao(conn);
			lists = dao.selectDB(limitPage, listCount, sname, svalue);
		} catch (SQLException | NamingException e) {
			e.printStackTrace();
		}finally {
			db.closeConnection();
		}
	  return lists;
  }
  
  
  //contents ����
  public BDto getSelectOne() {
	  BDto list = null;
	  try {
		conn = db.getConnection();
		JBoardDao dao = new JBoardDao(conn);  //viewDB()�޼ҵ带 �������� dao ��ü����
	    list = dao.viewDB(getId());
	} catch (SQLException | NamingException e) {		
		e.printStackTrace();
	}finally {
		db.closeConnection();
	}
	  
	  return list;
  }
  
  //update (��ȸ�� ����)
  public void getUpdate(int count) {
	  int uid = Integer.parseInt(getId());
	  try {
			conn = db.getConnection();
			JBoardDao dao = new JBoardDao(conn);  //viewDB()�޼ҵ带 �������� dao ��ü����
		    dao.updateDB(uid, count, "hit");
		} catch (SQLException | NamingException e) {		
			e.printStackTrace();
		}finally {
			db.closeConnection();
		}
  }
  
  
  
  
  
  
  
  
  
  
  
}
