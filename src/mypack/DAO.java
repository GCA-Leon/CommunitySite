package mypack;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;



public class DAO {
	DBConnectionMgr pool = DBConnectionMgr.getInstance();
	 private Connection conn;   //데이터베이스에 접근하기 위한 객체
	 private PreparedStatement pstmt;
	 
	public Vector<DTO> selectAll(String tableName){
		Vector<DTO> v = new Vector<DTO>();
		String query = "select * from "+tableName;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = pool.getConnection();
			pstmt = conn.prepareStatement(query);
			rs = pstmt.executeQuery();
			while(rs.next()){
				DTO dto = new DTO();
				dto.setId(rs.getString(1));
				dto.setPw(rs.getString(2));
				dto.setNickName(rs.getString(3));
				dto.setEmail(rs.getString(4));
				v.add(dto);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{			
			pool.freeConnection(conn,pstmt,rs);			
		}
		return v;
	}
	
	public DTO getUserInfo(String userId, String id){
		//Vector<String> v = new Vector<String>();	
		DTO dto = null;
		String query = "select * from "+userId+" where id=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = pool.getConnection();
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if(rs.next()){
				dto = new DTO();
				dto.setId(rs.getString(1));
				dto.setPw(rs.getString(2));
				dto.setNickName(rs.getString(3));
				dto.setEmail(rs.getString(4));
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{			
			pool.freeConnection(conn,pstmt,rs);	
		}
		return dto;
	}
	
	// db 데이터 입력 메서드
	public int insertMember(String id, String pw, String nickname, String email){
		
		String query = "INSERT INTO usertb VALUES(?, ?, ?, ?)";
		int result = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = pool.getConnection();
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			pstmt.setString(3, nickname);
			pstmt.setString(4, email);
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			pool.freeConnection(conn,pstmt);	
		}
		return result;
	}
		
	/*public int update(DTO dto){
		int result = 0;
		String query = "UPDATE usertb SET pw=?,nickName=? WHERE id=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		try{
			conn = pool.getConnection();
			pstmt = conn.prepareStatement(query);			
			pstmt.setString(1,(String)dto.getPw());
			pstmt.setString(2,(String)dto.getNickName());
			System.out.println((String)dto.getNickName());
			pstmt.setString(3,(String)dto.getId());
			result = pstmt.executeUpdate();
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			pool.freeConnection(conn,pstmt);	
		}
		return result;
	}*/
	
	
	public Vector<ConDTO> conSelectAll(String tableName){
		Vector<ConDTO> v = new Vector<ConDTO>();
		String query = "select * from "+tableName;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = pool.getConnection();
			pstmt = conn.prepareStatement(query);
			rs = pstmt.executeQuery();
			while(rs.next()){
				ConDTO cdto = new ConDTO();
				cdto.setTitle(rs.getString(2));
				cdto.setWriter(rs.getString(3));
				cdto.setContents(rs.getString(4));
				cdto.setView(rs.getString(5));
				cdto.setUp(rs.getString(6));
				cdto.setDown(rs.getString(7));
				cdto.setComments(rs.getString(8));
				cdto.setComnum(rs.getString(9));
				v.add(cdto);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{			
			pool.freeConnection(conn,pstmt,rs);	
		}
		return v;
	}
	
	/*회원가입 아이디 중복검사*/
	public int getConfire(String id){
		int result =0;
		String query = "select count(*) from usertb where id=?";
		//System.out.println("select count(*) from usertb where id="+id);
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try{
			conn = pool.getConnection();
			pstmt = conn.prepareStatement(query);			
			pstmt.setString(1,id);			
			rs = pstmt.executeQuery();
			if(rs.next()){
				result = rs.getInt(1);
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			pool.freeConnection(conn,pstmt,rs);	
		}
		//System.out.println("result = "+result);
		return result;		
	}
	
	// id 중복 체크 메서드
		public boolean idcheck(String id){
			String query = "SELECT id from usertb";
			ResultSet rs = null;
			Connection conn = null;
			PreparedStatement pstmt = null;
			try {
				conn = pool.getConnection();
				pstmt = conn.prepareStatement(query);
				rs = pstmt.executeQuery();
				
				while(rs.next()) {
					if(rs.getString("id").equals(id)){
						return true;
					}
				} 
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				pool.freeConnection(conn,pstmt,rs);	
			}
			return false;
		}
		
		// nickname 중복 체크 메서드
		public boolean nickcheck(String nick){
			
			String query = "SELECT nickname from usertb";
			ResultSet rs = null;
			Connection conn = null;
			PreparedStatement pstmt = null;
			try {
				conn =  pool.getConnection();
				pstmt = conn.prepareStatement(query);
				rs = pstmt.executeQuery();
				
				while(rs.next()) {
					if(rs.getString("nickname").equals(nick)){
						return true;
					}
				}
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				pool.freeConnection(conn,pstmt,rs);	
			}
			return false;
		}
		// nickname 가져오기
		public String getNickName(String id){
			
			String query = "SELECT nickname from usertb where id=?";
			ResultSet rs = null;
			Connection conn = null;
			PreparedStatement pstmt = null;
			String nick = null;
			try {
				conn =  pool.getConnection();
				pstmt = conn.prepareStatement(query);
				pstmt.setString(1,id);
				rs = pstmt.executeQuery();
				if(rs.next()){
					nick = rs.getString("nickname");
					return nick;
				}
				
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				pool.freeConnection(conn,pstmt,rs);	
			}
			return "??알수없음";
		}
		
		// email 중복 체크 메서드
		public boolean emailcheck(String email){
			
			String query = "SELECT email from usertb";
			ResultSet rs = null;
			Connection conn = null;
			PreparedStatement pstmt = null;
			try {
				conn = pool.getConnection();
				pstmt = conn.prepareStatement(query);
				rs = pstmt.executeQuery();
				
				while(rs.next()) {
					if(rs.getString("email").equals(email)){
						return true;
					}
				}
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				pool.freeConnection(conn,pstmt,rs);	
			}
			return false;
		}
		
		//메일로 아이디 찾기
		public String emailToID(String email){
			
			String query = "SELECT id from usertb where email=?";
			ResultSet rs = null;
			Connection conn = null;
			PreparedStatement pstmt = null;
			
			String result="";
			try {
				conn = pool.getConnection();				
				pstmt = conn.prepareStatement(query);
				pstmt.setString(1,email);
				rs = pstmt.executeQuery();
				
				if(rs.next()){
					result = rs.getString("id");
				}
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				pool.freeConnection(conn,pstmt,rs);	
			}
			return result;
		}
		
		/*비밀번호변경*/
		/*public int updatePw(String id,String pw){
			System.out.println("id:"+id+",pw:"+pw);
			int result = 0;
			String query = "UPDATE usertb SET pw=? WHERE id=?";
			Connection conn = null;
			PreparedStatement pstmt = null;
			try{
				conn = pool.getConnection();
				pstmt = conn.prepareStatement(query);			
				pstmt.setString(1,pw);
				pstmt.setString(2,id);				
				result = pstmt.executeUpdate();
			}catch(Exception e){
				e.printStackTrace();
			}finally{
				pool.freeConnection(conn,pstmt);	
			}
			return result;
		}*/
		
//		로그인
		public boolean login(String loginId, String loginPw){
			String query = "SELECT * FROM usertb WHERE id=? AND pw=?";
			ResultSet rs = null;			
			boolean canLogin=false;
			try {
				conn = pool.getConnection();
				pstmt = conn.prepareStatement(query);
				pstmt.setString(1, loginId);
				pstmt.setString(2, loginPw);
				rs = pstmt.executeQuery();

				if(rs.next()){
					canLogin=true;
				}

			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				pool.freeConnection(conn, pstmt);
			}
			
			return canLogin;
			
		}
//		닉네임 중복검사
		public int getNickConfire(String nick){
			int result =0;
			String query = "select count(*) from usertb where nickname=?";			
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			
			try{
				conn = pool.getConnection();
				pstmt = conn.prepareStatement(query);			
				pstmt.setString(1,nick);			
				rs = pstmt.executeQuery();
				if(rs.next()){
					result = rs.getInt(1);
				}
				System.out.println("result : "+result);
			}catch(Exception e){
				e.printStackTrace();
			}finally{
				pool.freeConnection(conn,pstmt,rs);	
			}
			//System.out.println("result = "+result);
			return result;		
		}
		
		//이메일 중복검사
		public int getEmailConfire(String email){
			int result =0;
			String query = "select count(*) from usertb where email=?";			
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			
			try{
				conn = pool.getConnection();
				pstmt = conn.prepareStatement(query);			
				pstmt.setString(1,email);			
				rs = pstmt.executeQuery();
				if(rs.next()){
					result = rs.getInt(1);
				}
			}catch(Exception e){
				e.printStackTrace();
			}finally{
				pool.freeConnection(conn,pstmt,rs);	
			}
			//System.out.println("result = "+result);
			return result;		
		}
		
		/*비밀번호변경*/
		public int updatePw(String id,String pw){
			System.out.println("id:"+id+",pw:"+pw);
			int result = 0;
			String query = "UPDATE usertb SET pw=? WHERE id=?";
			Connection conn = null;
			PreparedStatement pstmt = null;
			try{
				conn = pool.getConnection();
				pstmt = conn.prepareStatement(query);			
				pstmt.setString(1,pw);
				pstmt.setString(2,id);				
				result = pstmt.executeUpdate();
			}catch(Exception e){
				e.printStackTrace();
			}finally{
				pool.freeConnection(conn,pstmt);	
			}
			return result;
		}
		
		/* 닉네임 변경 */
		public int updateNick(String id,String nick){
			System.out.println("id:"+id+",nick:"+nick);
			int result = 0;
			String query = "UPDATE usertb SET nickname=? WHERE id=?";
			Connection conn = null;
			PreparedStatement pstmt = null;
			try{
				conn = pool.getConnection();
				pstmt = conn.prepareStatement(query);			
				pstmt.setString(1,nick);
				pstmt.setString(2,id);				
				result = pstmt.executeUpdate();
			}catch(Exception e){
				e.printStackTrace();
			}finally{
				pool.freeConnection(conn,pstmt);	
			}
			return result;
		}
		public int update(DTO dto){
			int result = 0;
			String query = "UPDATE usertb SET pw=?,nickName=? WHERE id=?";
			Connection conn = null;
			PreparedStatement pstmt = null;
			try{
				conn = pool.getConnection();
				pstmt = conn.prepareStatement(query);			
				pstmt.setString(1,(String)dto.getPw());
				pstmt.setString(2,(String)dto.getNickName());
				System.out.println((String)dto.getNickName());
				pstmt.setString(3,(String)dto.getId());
				result = pstmt.executeUpdate();
			}catch(Exception e){
				e.printStackTrace();
			}finally{
				pool.freeConnection(conn,pstmt);	
			}
			return result;
		}
		
		/*아이디로 이메일 찾기*/
		public String idToEmail(String id){
			String str="";
			Connection conn = null;
			PreparedStatement pstmt = null;
			String query = "select email from usertb where id=?";
			ResultSet rs = null;
			try{
				conn = pool.getConnection();
				pstmt = conn.prepareStatement(query);			
				pstmt.setString(1, id);
				rs = pstmt.executeQuery();
				if(rs.next()){
					str = rs.getString(1);
				}
			}catch(Exception e){
				e.printStackTrace();
			}finally{
				pool.freeConnection(conn,pstmt);	
			}
			return str;
		}
}
