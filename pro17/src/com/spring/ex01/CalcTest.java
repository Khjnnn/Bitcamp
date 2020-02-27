package com.spring.ex01;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class CalcTest {
	public static void main(String[] args) {
		ApplicationContext context = new ClassPathXmlApplicationContext("AOPTest.xml");
		Calculator cal = (Calculator) context.getBean("proxyCal");
		
		cal.add(100, 20);
		
		System.out.println("=======1번끗========");
		cal.subtract(100, 20);
		System.out.println("=======2번끗========");
		cal.divide(100, 20);
		System.out.println("=======3번끗========");
		cal.multiply(100, 20);
		System.out.println("=======================================");
		
		
	}
}
