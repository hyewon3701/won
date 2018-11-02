package user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;

public interface userHandler {
	public ModelAndView process(HttpServletRequest request, HttpServletResponse Response ) throws userException;
}
