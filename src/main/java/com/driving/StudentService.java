package com.driving;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class StudentService {

	private final StudentRepository studentRepository;

	@Autowired
	public StudentService(StudentRepository studentRepository) {
		this.studentRepository = studentRepository;
	}

	public List<Student> getStudents() {
		return studentRepository.findAll();
	}
	
	@SuppressWarnings("deprecation")
	public Student getStudent(Long studentId) {
		Student student = studentRepository.getById(studentId);
		return student;
	}

	public Student addNewStudent(Student student) {
		// TODO Auto-generated method stub
		Optional<Student> studentOptional = studentRepository.findStudentByEmail(student.getEmail());
		if (studentOptional.isPresent()) {
			throw new IllegalStateException("email taken");
		}
		Student savedStudent = studentRepository.save(student);
		System.out.println(student);
		return savedStudent;

	}

	public void deleteStudent(Long studentId) {
		// TODO Auto-generated method stub
		boolean exists = studentRepository.existsById(studentId);
		if (exists == false) {
			throw new IllegalStateException("student with id " + studentId + " does not exist");
		}
		studentRepository.deleteById(studentId);
	}

	@Transactional
	public void updateStudent(Long studentId, String name, String email) {
		// TODO Auto-generated method stub
		boolean exists = studentRepository.existsById(studentId);
		if (exists == false) {
			throw new IllegalStateException("student with id " + studentId + " does not exist");
		} else if (exists == true) {
			@SuppressWarnings("deprecation")
			Student student = studentRepository.getById(studentId);
			student.setName(name);
			student.setEmail(email);
		}
	}

}
