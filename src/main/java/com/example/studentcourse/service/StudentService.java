package com.example.studentcourse.service;

import com.example.studentcourse.model.Course;
import com.example.studentcourse.model.Student;
import com.example.studentcourse.repository.CourseRepository;
import com.example.studentcourse.repository.StudentRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StudentService {

    private final StudentRepository studentRepository;
    private final CourseRepository courseRepository;

    public StudentService(StudentRepository studentRepository,
                          CourseRepository courseRepository) {
        this.studentRepository = studentRepository;
        this.courseRepository = courseRepository;
    }

    // CREATE
    public Student saveStudent(Student student) {
        return studentRepository.save(student);
    }

    // READ
    public List<Student> getAllStudents() {
        return studentRepository.findAll();
    }

    // READ with JOIN
    public List<Student> getStudentsWithCourses() {
        return studentRepository.getStudentsWithCourses();
    }

    // UPDATE
    public Student updateStudent(Student student) {
        return studentRepository.save(student);
    }

    public Student saveStudentWithCourses(Student student, List<Long> courseIds) {

        List<Course> courses = courseRepository.findAllById(courseIds);
        student.setCourses(courses);
        return studentRepository.save(student);
    }

    // GET BY ID (needed for update form)
    public Student getStudentById(Long id) {
        return studentRepository.findById(id)
                .orElseThrow(() -> new RuntimeException("Student not found"));
    }
}