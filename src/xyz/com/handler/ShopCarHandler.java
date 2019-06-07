package xyz.com.handler;

import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import xyz.com.entity.Shop;
import xyz.com.service.ShopCarService;


@Controller
public class ShopCarHandler {
	@Autowired
	private ShopCarService service;
	
	@RequestMapping(value="queryPage/{begin}")
	public String handlerQueryShopCarByPage(@PathVariable("begin") Integer begin, Map<String, Object> map) {
		List<Shop> shops = service.queryShopCarByPage(begin - 1);
		Integer count = service.queryCount();
		map.put("lists", shops);
		map.put("count", count);
		map.put("begin", begin);
		return "shopcar";
	}
	
	@RequestMapping(value="deleteById/{id}")
	public String handlerDeleteById(@PathVariable("id") Integer id) {
		Integer num = service.deleteById(id);
		return "redirect:http://localhost:8888/shop/queryPage/1";
	}
	
	@RequestMapping(value="insertShopCar", method = RequestMethod.POST)
	public String handlerInserShopCar(@ModelAttribute("shop") Shop shop) {
		try {
			shop.setDesc(new String(shop.getDesc().getBytes("iso-8859-1"),"utf-8"));
			shop.setColor(new String(shop.getColor().getBytes("iso-8859-1"),"utf-8"));
			Integer num = service.insertShopCar(shop);
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return "redirect:http://localhost:8888/shop/detail/" + shop.getId();
	}
	
	@RequestMapping(value="deleteAll")
	public Integer handlerDeleteAll() {
		Integer num = service.deleteAll();
		return num;
	}
	
}
