package xyz.com.service;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import xyz.com.entity.Shop;
import xyz.com.mapper.ShopCarMapper;
import xyz.com.mapper.ShopMapper;

@Service
public class ShopCarService {
	@Autowired
	private ShopCarMapper carMap;
	@Autowired
	private ShopMapper shopMap;
	
	public List<Shop> queryShopCar() {
		List<Shop> shops = carMap.queryAllShops();
		return shops;
	}
	
	public List<Shop> queryShopCarByPage(Integer begin) {
		List<Shop> shops = carMap.queryShopsByPage(begin * 5);
		return shops;
	}
	
	public Integer queryCount() {
		Integer count = carMap.queryCount();
		return (count / 5) + 1;
	}
	
	@Transactional(rollbackFor = {SQLException.class})
	public Integer deleteById(Integer id) {
		try {
			Shop shop = carMap.queryShopCarById(id);
			shopMap.increameNum(shop);
			Integer num = carMap.deleteById(id);
			return num;
		} catch (Exception e) {
			throw new RuntimeException();
		}
	}
	
	@Transactional(rollbackFor = {SQLException.class})
	public Integer insertShopCar(Shop shop) {
		try {
			if(shopMap.queryShopNum(shop.getId()) < shop.getNum()) {
				throw new RuntimeException();
			}else {
				Integer num = carMap.insertShopCar(shop);
				shopMap.updateNum(shop);
				return num;
			}
		} catch (Exception e) {
			throw new RuntimeException();
		}
	}
	
	public Integer deleteAll() {
		Integer num = carMap.deleteAllShops();
		return num;
	}
}
