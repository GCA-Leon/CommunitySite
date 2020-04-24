package yjpack;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;
import mypack.*;


public class SearchDAO {

	DBConnectionMgr pool = DBConnectionMgr.getInstance();
	private Connection conn;
	private PreparedStatement pstmt;
	
	// 아무 거나 검색 
	
	
	
	public int listcall(String boardname){
		int r= 0;
		ResultSet rs = null;
		String query = "select Count(idx) from "+boardname;
		
		try {
			conn = pool.getConnection();
			pstmt = conn.prepareStatement(query);
			rs = pstmt.executeQuery();
			if(rs.next()){
				r = rs.getInt(1);
				
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			pool.freeConnection(conn,pstmt);
		}
		return r;
	}
	public int listcall2(String boardname,String sc,String keyword){
		int r= 0;
		ResultSet rs = null;
		String query = "select Count(idx) from "+boardname+" where "+sc+" = ?";
		
		try {
			conn = pool.getConnection();
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, keyword);
			
			rs = pstmt.executeQuery();
			if(rs.next()){
				r = rs.getInt(1);
				
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			pool.freeConnection(conn,pstmt);
		}
		return r;
	}
	public Vector mainlist(String boardname, int rows){
		Vector<SearchDTO> v  = new Vector<SearchDTO>();
		ResultSet rs = null;
		
		
		String query = "select * from "+boardname+" order by idx desc limit 0,?";  

		
		//System.out.println(query);
		try {
			conn = pool.getConnection();
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, rows); 
			
			//System.out.println(pstmt);
			rs = pstmt.executeQuery();
			while(rs.next()){
				SearchDTO dto= new SearchDTO();
				dto.setIdx(rs.getInt(1));
				dto.setTitle(rs.getString(2));
				dto.setWriter(rs.getString(3));
				dto.setWdate(rs.getDate(5));
				dto.setView(rs.getInt(6));
				dto.setUp(rs.getInt(7));
				dto.setDown(rs.getInt(8));
				dto.setComnum(rs.getInt(10));
				v.add(dto);
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			pool.freeConnection(conn,pstmt,rs);
		}
		
		return v;
	}
	public Vector boardlist(String boardname, String category,String keyword,int pages){
		Vector<SearchDTO> v  = new Vector<SearchDTO>();
		ResultSet rs = null;
		
		
		String query = "select * from "+boardname+" where "+category+" like ?";
		String[] keywords = keyword.split(" ");
		if(keyword.indexOf(" ")>0){
			
			for(int i =0;i<keywords.length-1;i++){
				query += "%"+keywords[i]+"%";
			}
			
		}
		else{
		}

		if(query.indexOf("null")>0){
			query = "select * from "+boardname;
		}
		query +=  " order by idx desc limit "+pages+",20";

		
		//System.out.println(query);
		try {
			if(query.indexOf("where")>=0){
			conn = pool.getConnection();
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, "%"+keyword+"%");
			//for문 돌려서 ?갯수만큼 반복
			//pstmt.setString(1, category);
			}
			else{
			conn = pool.getConnection();
			pstmt = conn.prepareStatement(query);
			}
			//System.out.println(pstmt);
			rs = pstmt.executeQuery();
			while(rs.next()){
				SearchDTO dto= new SearchDTO();
				dto.setIdx(rs.getInt(1));
				dto.setTitle(rs.getString(2));
				dto.setWriter(rs.getString(3));
				dto.setWdate(rs.getDate(5));
				
				dto.setView(rs.getInt(6));
				dto.setUp(rs.getInt(7));
				dto.setDown(rs.getInt(8));
				dto.setComnum(rs.getInt(10));
				v.add(dto);
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			pool.freeConnection(conn,pstmt,rs);
		}
		
		return v;
		
	}
	
	public int Write(String boardname,String title,String writer, String contents,String comments){
		int i = 0;
		String query = "insert into "+boardname+" values(null,?,?,?,now(),0,0,0,?,0,null)";
		
		try {
			conn = pool.getConnection();
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, title);
			pstmt.setString(2, writer);
			pstmt.setString(3, contents);			
			pstmt.setString(4, comments);
			
			//System.out.println(pstmt);
			i = pstmt.executeUpdate();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			pool.freeConnection(conn,pstmt);
		}
		
		
		return i;
	}
	public Vector CallPost(String boardname,int idx){
		Vector<SearchDTO> v = new Vector<SearchDTO>();
		ResultSet rs = null;
		int i =0;
		String query1="update "+boardname+" set view = view+1 where idx=?" ;
		String query2 = " select * from "+boardname+" where idx=?";
		
		try {
			conn = pool.getConnection();
			pstmt = conn.prepareStatement(query1);
			pstmt.setInt(1, idx);
			//System.out.println("query1"+pstmt);
			i = pstmt.executeUpdate();
			
			
			pstmt = conn.prepareStatement(query2);
			pstmt.setInt(1, idx);
			
			//System.out.println("query2"+pstmt);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				SearchDTO dto = new SearchDTO();
				dto.setIdx(rs.getInt(1));
				dto.setTitle(rs.getString(2));
				dto.setWriter(rs.getString(3));
				dto.setContents(rs.getString(4));
				dto.setWdate(rs.getDate(5));
				dto.setView(rs.getInt(6));
				dto.setUp(rs.getInt(7));
				dto.setDown(rs.getInt(8));
				dto.setComments(rs.getString(9));
				dto.setComnum(rs.getInt(10));
				
				v.add(dto);
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			pool.freeConnection(conn,pstmt,rs);
		}
		return v;
	}
	
	public int favorite(String boardname,String press,int idx){
		int r = 0;
		
		String query="update "+boardname+" set "+press+" = "+press+" +1 where idx=?" ;
		
		
		try {
			conn = pool.getConnection();
			pstmt = conn.prepareStatement(query);
			System.out.println(pstmt);
			pstmt.setInt(1, idx);
			r=pstmt.executeUpdate();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			pool.freeConnection(conn,pstmt);
		}
		
		return r;
	}
	
	public void upList(String boardname, String nickname, int idx){
		String query1 = "select upList from "+boardname+" where idx="+idx;
		String query2 = "UPDATE "+ boardname+ " SET upList=? where idx="+idx;		
		ResultSet rs = null;
		String oldUsers="";
		try {
			conn = pool.getConnection();
			pstmt = conn.prepareStatement(query1);
			rs=pstmt.executeQuery();
			if(rs.next()){
				oldUsers = rs.getString(1);
				System.out.println("oldusers = "+oldUsers);
			}
			
			pstmt = conn.prepareStatement(query2);
			pstmt.setString(1, oldUsers+","+nickname);
			System.out.println(pstmt);
			//pstmt.setInt(1, idx);
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			pool.freeConnection(conn,pstmt,rs);
		}
		
	}
	public int isUpList(String boardname, String nickname, int idx){
		int r=0;
		String userList = "";
		ResultSet rs = null;
		String[] users = null;
		String query1 = "select upList from "+boardname+" where idx="+idx;
		try {
			conn = pool.getConnection();
			pstmt = conn.prepareStatement(query1);
			rs=pstmt.executeQuery();
			if(rs.next()){
				userList = rs.getString(1);
				System.out.println("userList = "+userList);
				users = userList.split(",");
				for(int i=0; i<users.length;i++){
					if(users[i].equals(nickname)){
						r = 1;
					}
				}
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			pool.freeConnection(conn,pstmt,rs);
		}
		return r;
	}
	
	public int Delete(String boardname,int idx){
		int i = 0;
		String query = "delete from "+boardname+" where idx=?";
		
		try {
			conn = pool.getConnection();
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, idx);
			i = pstmt.executeUpdate();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			pool.freeConnection(conn,pstmt);
			
		}
		
		return i;
	}
	
}
