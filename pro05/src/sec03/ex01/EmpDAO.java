package sec03.ex01;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.RequestDispatcher;
import javax.sql.DataSource;

import sec01.ex01.MemberVO;

public class EmpDAO {
	private DataSource dataFactory;
	private Connection conn;
	private PreparedStatement pstmt;

	public EmpDAO() {
		try {
			Context ctx = new InitialContext();
			Context envContext = (Context) ctx.lookup("java:/comp/env");
			dataFactory = (DataSource) envContext.lookup("jdbc/oracle");
			
		} catch (Exception e) {
			e.printStackTrace();
			
		}
	}

	public List<EmpVO> prodslist(){
		List<EmpVO> prodsList = new ArrayList();
		try {
			conn = dataFactory.getConnection();
			String query = "select * from Products p, Vendors v where p.vend_id=v.vend_id";
			System.out.println(query);
			pstmt = conn.prepareStatement(query);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				String id = rs.getString("prod_id");
				String name = rs.getString("prod_name");
				int price = rs.getInt("prod_price");
				String desc = rs.getString("prod_desc");
				String vendid = rs.getString("vend_name");
				EmpVO EmpVO = new EmpVO(id, name, price, desc, vendid);
				prodsList.add(EmpVO);				
			}
			rs.close();
			pstmt.close();
			conn.close();
		} catch(SQLException e) {
			e.printStackTrace();
		}
		return prodsList;	
		
	}
	public List<EmpVO> searchProd(String _id) {
		List<EmpVO> searchList = new ArrayList();
		try {
			conn = dataFactory.getConnection();
			String query = "select * from Products p, Vendors v where p.vend_id=v.vend_id and prod_id LIKE "+_id;
			System.out.println(query);
			pstmt = conn.prepareStatement(query);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				String id = rs.getString("prod_id");
				String name = rs.getString("prod_name");
				int price = rs.getInt("prod_price");
				String desc = rs.getString("prod_desc");
				String vendid = rs.getString("vend_name");
				EmpVO EmpVO = new EmpVO(id, name, price, desc, vendid);
				searchList.add(EmpVO);				
			}
			rs.close();
			pstmt.close();
			conn.close();
		} catch(SQLException e) {
			e.printStackTrace();
		}
		return searchList;	
		
	}
	
	// 찾기 
	public EmpVO findProd(String _id) {
		EmpVO prodInfo = null;
		try {
			conn = dataFactory.getConnection();
			String query = "select * from Products where prod_id='"+_id+"'";
			pstmt = conn.prepareStatement(query);
			//pstmt.setString(1, _id);
			System.out.println(query);
			ResultSet rs = pstmt.executeQuery();
			rs.next();
			String id = rs.getString("prod_id");
			String name = rs.getString("prod_name");
			int price = rs.getInt("prod_price");
			String desc = rs.getString("prod_desc");
			String vendid = rs.getString("vend_id");
			System.out.println(id);
			prodInfo = new EmpVO(id, name, price, desc, vendid);
			pstmt.close();
			conn.close();
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		return prodInfo;
	}
	
	public void modProd(EmpVO empVO) {
		String id = empVO.getId();
		String name = empVO.getName();
		int price = empVO.getPrice();
		String desc = empVO.getDesc();
		String vendid = empVO.getVendid();
		name = name.trim();
		vendid = vendid.trim();
		try {
			conn = dataFactory.getConnection();
			String query = "update Products set prod_name='"+name+"', prod_price='"+price+"', prod_desc='"+desc+"', vend_id='"+vendid+"' where prod_id='"+id+"'";
			System.out.println(query);
			pstmt = conn.prepareStatement(query);
//			pstmt.setString(1, name);
//			pstmt.setInt(2, price);
//			pstmt.setString(3, desc);
//			pstmt.setString(4, vendid);
//			pstmt.setString(5, id);
			int ret = pstmt.executeUpdate();
			System.out.println("수정완료:"+ ret);
			pstmt.close();
			conn.close();
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void delProd(String id) {
		try {
			conn = dataFactory.getConnection();
			String query = "delete from Products where prod_id='"+id+"'";
			System.out.println(query);
			pstmt = conn.prepareStatement(query);
			//pstmt.setString(1, id);
			int ret = pstmt.executeUpdate();
			System.out.println("삭제완료:"+ ret);
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	
	public void addProd(EmpVO m) {
		try {
			conn = dataFactory.getConnection();
			String id = m.getId();
			String name = m.getName();
			int price = m.getPrice();
			String desc = m.getDesc();
			String vendid = m.getVendid();
			String query = "INSERT INTO products(prod_id, prod_name, prod_price, prod_desc, vend_id)"+"VALUES(?, ?, ?, ?, ?)";
			System.out.println(query);
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1,  id);
			pstmt.setString(2,  name);
			pstmt.setInt(3,  price);
			pstmt.setString(4,  desc);
			pstmt.setString(5,  vendid);
			pstmt.executeUpdate();
			System.out.println("insert update");
			pstmt.close();
			conn.close();			
		} catch(SQLException e) {
			e.printStackTrace();
		}
	}
}
