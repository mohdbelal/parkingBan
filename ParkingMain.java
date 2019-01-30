package com.parkingsystem.main;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@EnableAutoConfiguration
@ComponentScan("com.parkingsystem")
@EntityScan("com.parkingsystem")
public class ParkingMain {

	public static void main(String[] args) {
		
		SpringApplication.run(ParkingMain.class, args);
	}

}



































































