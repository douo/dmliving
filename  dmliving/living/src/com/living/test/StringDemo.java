/**
 * 
 */
package com.living.test;

import org.apache.commons.lang.StringUtils;

/**
 * @author C.donglin
 * @since 2009-12-22
 */
public class StringDemo {

	/**
	 * @author C.donglin
	 * @since 2009-12-22
	 * @param args
	 */
	public static void main(String[] args) {
		String demoStr = "/admin/product";
		System.out.println(StringUtils.contains(demoStr, "/admin/"));
	}

}
