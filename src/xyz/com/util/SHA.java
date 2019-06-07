package xyz.com.util;

import java.math.BigInteger;
import java.security.MessageDigest;

/*
SHA(Secure Hash Algorithm，安全散列算法），数字签名等密码学应用中重要的工具，
被广泛地应用于电子商务等信息安全领域。虽然，SHA与MD5通过碰撞法都被破解了�? 
但是SHA仍然是公认的安全加密算法，较之MD5更为安全*/

public class SHA {
	public static final String KEY_SHA = "SHA";   

	public static  String  getResult(String inputStr){
	    BigInteger sha =null;
	    System.out.println("加密前的数据:"+inputStr);
	    byte[] inputData = inputStr.getBytes();   
	    try {
	         MessageDigest messageDigest = MessageDigest.getInstance(KEY_SHA);  
	         messageDigest.update(inputData);
	         sha = new BigInteger(messageDigest.digest());   
	         System.out.println("SHA加密�?:" + sha.toString(32));   
	    } catch (Exception e) {e.printStackTrace();}
	    return sha.toString(32);
	}
}