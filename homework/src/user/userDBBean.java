package user;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

public class userDBBean {	
	SqlSession session = SqlMapClient.getSqlSession();
	
	public List<userDataBean> getUser(String user_id){
		return session.selectOne("user.getUser", user_id);
	}
	public int intoUser(userDataBean userDto) {
		return session.insert("user.intoUser", userDto);
	}
	public int deleteUser(userDataBean userDto) {
		return session.delete("user.deleteUser", userDto);
	}
	public int updateUser(userDataBean userDto) {
		return session.update("user.updateUser", userDto);
	}
	public int check(userDataBean userDto) {
		return session.selectOne("user.check", userDto);
	}
}
