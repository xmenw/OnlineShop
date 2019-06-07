package xyz.com.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import xyz.com.entity.Shop;


@Repository
public interface ShopMapper {
	List<Shop> queryAllShops();
	List<Shop> queryAllShopsByPrice(Integer order);
	Shop queryShopById(Integer id);
	Integer insertShop(Shop shop);
	Integer updateNum(Shop shop);
	Integer queryShopNum(int id);
	Integer increameNum(Shop shop);
}	
