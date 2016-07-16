package com.wcy.core.orm;

import com.wcy.core.ConvertUtil;
import org.apache.commons.lang3.StringUtils;
import org.springframework.util.Assert;

import java.util.Arrays;
import java.util.Date;
import java.util.List;

/**
 * 与具体ORM实现无关的属性过滤条件封装类, 主要记录页面中简单的搜索过滤条件.
 * 
 */
public class PropertyFilter {

	/** 多个属性间OR关系的分隔符. */
	public static final String OR_SEPARATOR = "_OR_";

	/** 属性比较类型. */
	public enum MatchType {
		EQ, LIKE, LT, GT, LE, GE, NE, BE, IN, ISNULL, iSNOTNULL, EQP, NEP, LTP, LEP, GTP, GEP;
	}

	/** 属性数据类型. */
	public enum PropertyType {
		S(String.class), I(Integer.class), L(Long.class), N(Double.class), D(Date.class), B(Boolean.class), A(Arrays.class), T(List.class);

		private Class<?> clazz;

		private PropertyType(Class<?> clazz) {
			this.clazz = clazz;
		}

		public Class<?> getValue() {
			return clazz;
		}
	}

	private MatchType matchType = null;
	private Object matchValue = null;

	private Class<?> propertyClass = null;
	private String[] propertyNames = null;

	public PropertyFilter() {
	}

	/**
	 * @param filterName 比较属性字符串,含待比较的比较类型、属性值类型及属性列表. 
	 *                   eg. LIKES_NAME_OR_LOGIN_NAME
	 * @param value 待比较的值.
	 */
	public PropertyFilter(final String filterName, final String value) {

		String firstPart = StringUtils.substringBefore(filterName, "_");
		String matchTypeCode = StringUtils.substring(firstPart, 0, firstPart.length() - 1);
		String propertyTypeCode = StringUtils.substring(firstPart, firstPart.length() - 1, firstPart.length());

		try {
			matchType = Enum.valueOf(MatchType.class, matchTypeCode);
		} catch (RuntimeException e) {
			throw new IllegalArgumentException("filter名称" + filterName + "没有按规则编写,无法得到属性比较类型.", e);
		}

		try {
			propertyClass = Enum.valueOf(PropertyType.class, propertyTypeCode).getValue();
		} catch (RuntimeException e) {
			throw new IllegalArgumentException("filter名称" + filterName + "没有按规则编写,无法得到属性值类型.", e);
		}

		String propertyNameStr = StringUtils.substringAfter(filterName, "_");
		Assert.isTrue(StringUtils.isNotBlank(propertyNameStr), "filter名称" + filterName + "没有按规则编写,无法得到属性名称.");
		propertyNames = StringUtils.splitByWholeSeparator(propertyNameStr, PropertyFilter.OR_SEPARATOR);

		this.matchValue = ConvertUtil.convertStringToObject(value, propertyClass);
	}
	
	/**
	 * 两个属性值进行比较，matchTypeCode必须是：EQP, NEP, LTP, LEP, GTP, GEP中的一个.
	 * @param propertyName
	 * @param matchTypeCode
	 * @param otherPropertyName
	 */
	public PropertyFilter(String propertyName, String matchTypeCode, String otherPropertyName) {
		try {
			this.matchType = ((MatchType)Enum.valueOf(MatchType.class, matchTypeCode));
			switch (matchType){
			case EQP:
				break;
			case NEP:
				break;
			case LTP:
				break;
			case LEP:
				break;
			case GTP:
				break;
			case GEP:
				break;
			default:
				throw new RuntimeException("比较类型" + matchTypeCode + "必须是：EQP, NEP, LTP, LEP, GTP, GEP中的一个.");
			}
	    } catch (RuntimeException e) {
	    	throw new IllegalArgumentException("比较类型" + matchTypeCode + "没有按规则编写,无法得到属性比较类型.", e);
	    }
	    Assert.isTrue(StringUtils.isNotBlank(propertyName), "property名称" + propertyName + "没有按规则编写,无法得到属性名称.");
	    this.propertyNames = new String[] { propertyName };
	    this.matchValue = otherPropertyName;
	}

	/**
	 * 获取比较值的类型.
	 */
	public Class<?> getPropertyClass() {
		return propertyClass;
	}

	/**
	 * 获取比较方式.
	 */
	public MatchType getMatchType() {
		return matchType;
	}

	/**
	 * 获取比较值.
	 */
	public Object getMatchValue() {
		return matchValue;
	}

	/**
	 * 获取比较属性名称列表.
	 */
	public String[] getPropertyNames() {
		return propertyNames;
	}

	/**
	 * 获取唯一的比较属性名称.
	 */
	public String getPropertyName() {
		Assert.isTrue(propertyNames.length == 1, "There are not only one property in this filter.");
		return propertyNames[0];
	}

	/**
	 * 是否比较多个属性.
	 */
	public boolean hasMultiProperties() {
		return (propertyNames.length > 1);
	}
}
