package user;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginHd implements UserHandler {
	@Resource
	public UserDBBean userDao;
	@Override
	@RequestMapping("/login")
	public ModelAndView process(HttpServletRequest request, HttpServletResponse Response) throws UserException {
		if(request.getParameter("login")==null) {
			return new ModelAndView("/login");
		}else {
			String user_id=request.getParameter("id");
			String passwd = request.getParameter("passwd");
			int result;			
			int consequence = userDao.check(user_id);
			System.out.println(consequence);
			if(consequence >0) {
				result = userDao.userLogin(user_id, passwd);				
			}else {
				result= 0;
			}
			request.getSession().setAttribute("user_id", user_id);
			request.setAttribute("result", result);
			return new ModelAndView("/login");
		}		
	}
}
