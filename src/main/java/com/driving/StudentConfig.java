package com.driving;

import java.time.LocalDate;
import java.time.Month;
import java.util.List;

import org.springframework.boot.CommandLineRunner;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class StudentConfig {
	
	@Bean
	CommandLineRunner commandLineRunner(StudentRepository repository) {
		return args -> {
			Student noob = new Student("noob", "hello@bye.com",LocalDate.of(2000, Month.JANUARY, 5));
			
			Student nobo = new Student("nobo", "helgreet4rgr3w@56rer46ft.com",LocalDate.of(2001, Month.APRIL, 8));
			
			repository.saveAll(List.of(noob, nobo));
		};
		};
		
		
	}


