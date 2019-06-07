package xyz.com.handler;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.http.HttpMethod;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import xyz.com.entity.Comment;
import xyz.com.entity.Shop;
import xyz.com.mapper.ShopMapper;
import xyz.com.service.CommentService;


@Controller
public class ShopHandler {
	@Autowired
	private ShopMapper shopMap;
	@Autowired
	private CommentService comment;

	@RequestMapping(value="queryAllShops")
	public String handlerShow(Map<String, Object> map) {
		List<Shop> shops = shopMap.queryAllShops();
		map.put("shops", shops);
		map.put("num", shops.size());
		return "nanzhuang";
	}
	
	@RequestMapping(value="queryShopsByPrice")
	public String handlerShopsByPrice(@RequestParam("order") Integer order, Map<String, Object> map) {
		List<Shop> shops = shopMap.queryAllShopsByPrice(order);
		map.put("shops", shops);
		map.put("num", shops.size());
		return "nanzhuang";
	}
	
	@RequestMapping(value="detail/{id}")
	public String handlerDetail(@PathVariable("id") Integer id, Map<String, Object> map) {
		Shop shop = shopMap.queryShopById(id);
		List<Comment> comments = comment.queryCommentById(id);
		map.put("shop", shop);
		map.put("comment", comments);
		return "chooseItem";
	}
	
	@RequestMapping(value="addShop", method=RequestMethod.POST)
	public String handlerUpload(@ModelAttribute("shop") Shop shop, Map<String, Object> map) {
		try {
//			InputStream in = file.getInputStream();
//			String name = file.getOriginalFilename();
//			OutputStream out = new FileOutputStream("E:\\sts\\shop\\WebContent\\res\\image\\" + name);
//			byte[] bs = new byte[1024];
//			int len = -1;
//			while((len = in.read(bs)) != -1) {
//				out.write(bs, 0, len);
//			}
//			out.close();
			map.put("shop", shop);
			System.out.println(shop);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "upload";
	}
	
	@RequestMapping(value="test")
	public String handlerUpload() {
		return "upload";
	}
	
	@RequestMapping(value="insertShop", method=RequestMethod.POST)
	public int handlerInsertShop(@ModelAttribute("shop") Shop shop) {
		System.out.println(shop);
		int num = shopMap.insertShop(shop);
		return num;
	}
	
}
