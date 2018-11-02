package user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.servlet.ModelAndView;

@Controller
public class logInHd implements userHandler {
	
	@Override
	@RequestMapping("/login")
	public ModelAndView process(HttpServletRequest request, HttpServletResponse Response) throws userException {
		if(request.getParameter("login")==null) {
			return new ModelAndView("/login");
		}else {
			String id=request.getParameter("id");
			String passwd = request.getParameter("password");
			
			userDataBean userDto = new userDataBean();
			userDto.setUser_id(id);
			userDto.setPassword(passwd);
			userDBBean userDao = new userDBBean();
			int result = userDao.check(userDto);
			request.setAttribute("result", result);
			
			return new ModelAndView("/login");
		}		
	}
}
