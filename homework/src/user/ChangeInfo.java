package user;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ChangeInfo implements UserHandler {
    @Resource
    public UserDBBean userDao;
	@Override
	@RequestMapping("change")
	public ModelAndView process(HttpServletRequest request, HttpServletResponse Response) throws UserException {
		if(request.getParameter("change")==null) {
			String user_id =  (String) request.getSession().getAttribute("user_id");	
			UserDataBean userDto = userDao.getUser(user_id);
			request.setAttribute("userDto", userDto);
			return new ModelAndView("changeinfo");
		}else {
			String user_id = (String) request.getSession().getAttribute("user_id");
			UserDataBean userDto = new UserDataBean();
			userDto.setEmail(request.getParameter("email"));
			userDto.setPassword(request.getParameter("password"));
			userDto.setUser_name(request.getParameter("username"));
			userDto.setUser_id(user_id);
			int result = userDao.updateUser(userDto);
			request.setAttribute("result", result);
			return new ModelAndView("changeinfo");
		}
	}

}
