package com.entity.model;

import com.entity.BingfangEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;
import java.io.Serializable;
 

/**
 * 病房
 * 接收传参的实体类  
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了） 
 * 取自ModelAndView 的model名称
 * @author 
 * @email 
 * @date 2024-03-06 17:26:54
 */
public class BingfangModel  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 病床数
	 */
	
	private String bingchuangshu;
		
	/**
	 * 病房位置
	 */
	
	private String bingfangweizhi;
		
	/**
	 * 空闲床位
	 */
	
	private String kongxianchuangwei;
		
	/**
	 * 科室
	 */
	
	private String keshi;
				
	
	/**
	 * 设置：病床数
	 */
	 
	public void setBingchuangshu(String bingchuangshu) {
		this.bingchuangshu = bingchuangshu;
	}
	
	/**
	 * 获取：病床数
	 */
	public String getBingchuangshu() {
		return bingchuangshu;
	}
				
	
	/**
	 * 设置：病房位置
	 */
	 
	public void setBingfangweizhi(String bingfangweizhi) {
		this.bingfangweizhi = bingfangweizhi;
	}
	
	/**
	 * 获取：病房位置
	 */
	public String getBingfangweizhi() {
		return bingfangweizhi;
	}
				
	
	/**
	 * 设置：空闲床位
	 */
	 
	public void setKongxianchuangwei(String kongxianchuangwei) {
		this.kongxianchuangwei = kongxianchuangwei;
	}
	
	/**
	 * 获取：空闲床位
	 */
	public String getKongxianchuangwei() {
		return kongxianchuangwei;
	}
				
	
	/**
	 * 设置：科室
	 */
	 
	public void setKeshi(String keshi) {
		this.keshi = keshi;
	}
	
	/**
	 * 获取：科室
	 */
	public String getKeshi() {
		return keshi;
	}
			
}
