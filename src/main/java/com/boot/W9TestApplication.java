package com.boot;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;

@SpringBootApplication
public class W9TestApplication {

	public static void main(String[] args) {
		ApplicationContext context = 
		SpringApplication.run(W9TestApplication.class, args);
		
//		BookService bs = context.getBean(BookService.class);
//		try {
//			System.out.println(bs.getAllBook());
//			for (books b:bs.getAllBook()) {
//				System.out.println(b);
//			}
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
	}
}
