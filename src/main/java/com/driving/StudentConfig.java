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
			Student noob = new Student("noob", "ddfgthrerewd@dsfds.com");
			noob.setAddress("address1");
			noob.setDob(LocalDate.of(2001, Month.APRIL, 8));

			Student nobo = new Student("noob", "yyyyy@dsfds.com");
			nobo.setAddress("address1");
			nobo.setDob(LocalDate.of(2000, Month.JANUARY, 5));

			repository.saveAll(List.of(noob, nobo));
		};
	};

}
