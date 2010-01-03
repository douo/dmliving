package com.living.util;

import java.util.Random;

public class GenerateNewPassword {
	private final static char[] TABLE_CODE = { 'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z','A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z','0','1','2','3','4','5','6','7','8','9' };

	public static String generatePsw(int length) {
		String psw = new String();
		for (int i = 0; i < length; i++) {
			psw += TABLE_CODE[new Random().nextInt(TABLE_CODE.length)];
		}
		return psw;
	}
	
	public static void main(String[] args) {
		System.out.println(GenerateNewPassword.generatePsw(5));
	}
}
