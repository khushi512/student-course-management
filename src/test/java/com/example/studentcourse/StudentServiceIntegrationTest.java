package com.example.studentcourse;

import com.example.studentcourse.model.Student;
import com.example.studentcourse.service.StudentService;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import java.util.List;
import static org.junit.jupiter.api.Assertions.assertNotNull;

@SpringBootTest
public class StudentServiceIntegrationTest
{
    @Autowired
    private StudentService studentService;

    @Test
    void testGetAllStudents() {
        List<Student> students = studentService.getAllStudents();
        assertNotNull(students);
    }

    @Test
    void testJoinQuery() {
        List<Student> students = studentService.getStudentsWithCourses();
        assertNotNull(students);
    }
}
