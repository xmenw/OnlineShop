package xyz.com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.PathVariable;

import xyz.com.entity.Shop;
import xyz.com.mapper.CommentMapper;
import xyz.com.mapper.ShopMapper;

@Transactional
@Service
public class ShopService {
	@Autowired
	private ShopMapper mapper;
	
	public List<Shop> show() {
		List<Shop> shops = mapper.queryAllShops();
		return shops;
	}
	
	public List<Shop> queryAllShopsByPrice(int order) {
		List<Shop> shops = mapper.queryAllShopsByPrice(order);
		return shops;
	}
	
	public Shop detail(@PathVariable("id") Integer id) {
		Shop shop = mapper.queryShopById(id);
		return shop;
	}
}
