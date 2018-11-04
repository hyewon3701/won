package user;


import org.apache.ibatis.session.SqlSession;

public class UserDBBean {	
	private SqlSession session = SqlMapClient.getSession();
	
	public UserDataBean getUser(String user_id){
		return session.selectOne("user.getUser", user_id);
	}
	public int intoUser(UserDataBean userDto) {
		return session.insert("user.intoUser", userDto);
	}
	public int deleteUser(UserDataBean userDto) {
		return session.delete("user.deleteUser", userDto);
	}
	public int updateUser(UserDataBean userDto) {
		return session.update("user.updateUser", userDto);
	}
	public int check(String user_id) {
		return session.selectOne("user.check", user_id);
	}
	public UserDataBean checkId(String user_id) {
		return session.selectOne("user.checkId", user_id);
	}
	
	public int userLogin( String user_id, String passwd ) {
		int result;
		UserDataBean userDto = checkId(user_id);
		if( passwd.equals( userDto.getPassword() ) ) {
			result = 1;
		} else {
			result = -1;
		}				
		return result;		
	}
}
