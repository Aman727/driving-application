package com.driving;

import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

@Controller
public class StudentWebController {
	@Autowired
	private StudentService studentService;

	@RequestMapping("/")
	public String welcome(Map<String, Object> model) {
		return "welcome";
	}

	@RequestMapping("/showStudents")
	public String showStudents(Map<String, Object> model) {
		List<Student> students = studentService.getStudents();
		model.put("students", students);

		return "showStudents";
	}

	@GetMapping("/addStudent")
	public String addStudentView(Model model) {
		model.addAttribute("student", new Student());
		return "add-student";
	}

	@PostMapping("/addStudent")
	public RedirectView addStudent(@ModelAttribute("student") Student student, RedirectAttributes redirectAttributes) {
		final RedirectView redirectView = new RedirectView("/addStudent", true);
		Student savedStudent = studentService.addNewStudent(student);
		redirectAttributes.addFlashAttribute("savedStudent", savedStudent);
		redirectAttributes.addFlashAttribute("addStudentSuccess", true);
		return redirectView;
	}

	@GetMapping("/deleteStudent")
	public String showDeleteStudentPage() {
		return "delete-student";
	}

	@PostMapping("/deleteStudent")
	public String deleteStudent(@RequestParam("studentId") Long id) {
		// code to delete the student with the given id
		studentService.deleteStudent(id);
		return "redirect:/showStudents"; // redirect to the students list page
	}

	@GetMapping("/updateStudent")
	public String showUpdateStudentPage() {
		return "update-student";
	}

	@PostMapping("/updateStudent")
	public String updateStudent(@RequestParam("studentId") Long id, @RequestParam("name") String name,
			@RequestParam("email") String email) {
		studentService.updateStudent(id, name, email);
		return "redirect:/showStudents";
	}
	
	@GetMapping("/viewStudent")
	public String viewStudent(@RequestParam("studentId") Long id, RedirectAttributes redirectAttributes) {
		// code to delete the student with the given id
		Student student = studentService.getStudent(id);
		redirectAttributes.addFlashAttribute("student", student);
		return "redirect:/viewStudent"; // redirect to the students list page
	}

}
