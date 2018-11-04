package user;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
@Controller
public class DeleteHd implements UserHandler {	
	@Resource
	public UserDBBean userDao;
	@Override
	@RequestMapping("delete")
	public ModelAndView process(HttpServletRequest request, HttpServletResponse Response) throws UserException {
		String user_id = (String) request.getSession().getAttribute("user_id");
		userDao.deleteUser(user_id);
		request.getSession().removeAttribute("user_id");
		return new ModelAndView("delete");
	}

}
