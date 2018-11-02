package user;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
@Controller
public class mypageHd implements userHandler {
	@Resource
	public userDBBean userDao;
	@RequestMapping("mypage")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse Response) throws userException {
		String user_id = (String) request.getSession().getAttribute("user_id");
		userDao.getUser(user_id);
		
		return new ModelAndView("/mypage");
	}

}
