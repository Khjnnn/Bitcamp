package com.spring.ex01;


import org.aopalliance.intercept.MethodInterceptor;
import org.aopalliance.intercept.MethodInvocation;


public class LoggingAdvice implements MethodInterceptor{
	public Object invoke(MethodInvocation invocation) throws Throwable{
		System.out.println("메소드 호출전 : 로깅어드바이스");
		System.out.println(invocation.getMethod() + "메소드 호출전");
		
		Object object = invocation.proceed();
		
		System.out.println("메소드 호출후 : 로깅어드바이스");
		System.out.println(invocation.getMethod() + "메소드 호출후");
		
		return object;
	}
}
