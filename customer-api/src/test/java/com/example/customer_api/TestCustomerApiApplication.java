package com.example.customer_api;

import org.springframework.boot.SpringApplication;

public class TestCustomerApiApplication {

	public static void main(String[] args) {
		SpringApplication.from(CustomerApiApplication::main).with(TestcontainersConfiguration.class).run(args);
	}

}
