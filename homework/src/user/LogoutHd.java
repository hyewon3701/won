package user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
@Controller
public class LogoutHd implements UserHandler {

	@Override
	@RequestMapping("logout")
	public ModelAndView process(HttpServletRequest request, HttpServletResponse Response) throws UserException {
		request.getSession().removeAttribute("user_id");
		return new ModelAndView("/login");
	}

}
