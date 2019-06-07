package xyz.com.exception;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

@ControllerAdvice
public class AllExceptionHandler {
	
	@ExceptionHandler({Exception.class})
	public ModelAndView handlerException(Exception e){
		ModelAndView mvw = new ModelAndView("error");
		mvw.addObject("error", e);
		return mvw;
	}
}
