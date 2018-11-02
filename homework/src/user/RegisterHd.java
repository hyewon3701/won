package user;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.servlet.ModelAndView;

@Controller
public class RegisterHd implements UserHandler {
	@Resource
	public UserDBBean userDao;
	@RequestMapping("register")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse Response) throws UserException {
		if(request.getParameter("register")== null) {
			return new ModelAndView("/register");
		}else {
			UserDataBean userDto = new UserDataBean();
			userDto.setUser_id(request.getParameter("id"));
			userDto.setPassword(request.getParameter("password"));
			userDto.setUser_name(request.getParameter("username"));
			userDto.setEmail(request.getParameter("email"));			
			userDto.setGender(Integer.parseInt(request.getParameter("gender")));
			
			int result = userDao.intoUser(userDto);
			request.setAttribute("result", result);		
			
			return new ModelAndView("/register");
		}
		
	}
	
}
