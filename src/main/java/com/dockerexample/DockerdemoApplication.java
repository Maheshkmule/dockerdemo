package com.dockerexample;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class DockerdemoApplication {
      
	@GetMapping("/message")
	public String message() {
		return "Congratulation your application deployed successfully in Docker";
		
	}

	public static void main(String[] args) {
		SpringApplication.run(DockerdemoApplication.class, args);
	}

}
