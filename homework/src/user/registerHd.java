package user;


import java.sql.Timestamp;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.servlet.ModelAndView;

@Controller
public class registerHd implements userHandler {
	@RequestMapping("register")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse Response) throws userException {
		if(request.getParameter("register")== null) {
			return new ModelAndView("/register");
		}else {
			userDBBean userDao = new userDBBean();
			userDataBean userDto = new userDataBean();
			userDto.setUser_id(request.getParameter("id"));
			userDto.setPassword(request.getParameter("password"));
			userDto.setGender(Integer.parseInt(request.getParameter("gender")));
			userDto.setEmail(request.getParameter("email"));
			userDto.setReg_date(new Timestamp(System.currentTimeMillis() ));
			
			int result = userDao.intoUser(userDto);
			request.setAttribute("result", result);
			return new ModelAndView("/register");
		}
		
	}
	
}
