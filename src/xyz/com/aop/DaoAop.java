package xyz.com.aop;

import java.util.List;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.AfterThrowing;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

@Aspect
@Component
public class DaoAop {
	FileOutputStream fop = null;
	File file;
	
	public DaoAop() {
		super();
		file = new File("E:\\sts\\shop\\src\\userlLog.txt");
		try {
			fop = new FileOutputStream(file, true);
			if (!file.exists()) {
		    	file.createNewFile();
		    }
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	private void initFile(String value) {
		try {
		    byte[] contentInBytes = value.getBytes();
		    fop.write(contentInBytes);
		    fop.write("\n".getBytes());
		    fop.flush();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	@Pointcut("execution(* xyz.com.service.ShopCarService.*(..))")
	private void point() {}
	
	@Before("point()")
	private void before(JoinPoint jp) {
		initFile("进入购物车");
	}
	
	@After("point()")
	private void after(JoinPoint jp) {
		
	}
	
	@AfterReturning(value="point()", returning = "value")
	private void afterReturning(JoinPoint jp, List value) {
		initFile("用户当前正在浏览" + value.size() + "件商品，分别为: " + value.toString());
		try {
			if (fop != null) {
				fop.close();
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	@AfterThrowing(pointcut = "point()", throwing = "e")
	private void afterThrowing(JoinPoint jp, Exception e) {
		initFile("购物车出现了异常" + e.toString());
	}
	
}
