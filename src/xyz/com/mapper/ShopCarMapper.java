package xyz.com.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import xyz.com.entity.Shop;


@Repository
public interface ShopCarMapper {
	List<Shop> queryAllShops();
	Integer insertShopCar(Shop shop);
	List<Shop> queryShopsByPage(Integer begin);
	Integer queryCount();
	Integer deleteById(Integer id);
	Integer deleteAllShops();
	Shop queryShopCarById(Integer id);
}
