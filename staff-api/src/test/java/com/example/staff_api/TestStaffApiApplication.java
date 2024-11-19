package com.example.staff_api;

import org.springframework.boot.SpringApplication;

public class TestStaffApiApplication {

	public static void main(String[] args) {
		SpringApplication.from(StaffApiApplication::main).with(TestcontainersConfiguration.class).run(args);
	}

}
