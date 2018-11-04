package user;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
@Controller
public class MypageHd implements UserHandler {
	@Resource
	public UserDBBean userDao;
	@RequestMapping("mypage")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse Response) throws UserException {
		String user_id = (String) request.getSession().getAttribute("user_id");
		UserDataBean userDto = userDao.getUser(user_id);
		request.setAttribute("userDto", userDto);
		request.getSession().setAttribute("user_id", user_id);
		return new ModelAndView("/mypage");
	}

}
