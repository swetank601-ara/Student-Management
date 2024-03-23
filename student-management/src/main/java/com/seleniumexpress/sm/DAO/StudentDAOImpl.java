package com.seleniumexpress.sm.DAO;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowCallbackHandler;
import org.springframework.stereotype.Repository;

import com.seleniumexpress.sm.api.Student;
import com.seleniumexpress.sm.rowmapper.StudentRowMapper;

@Repository
public class StudentDAOImpl implements StudentDAO {

	@Autowired
	JdbcTemplate jdbcTemplate;
	
	@Override
	public List<Student> loadStudents() {
		// TODO Auto-generated method stub
		
		String sql = "select * from students";
		List<Student> theListOfStudent = jdbcTemplate.query(sql, new StudentRowMapper());
		return theListOfStudent;
	}

	@Override
	public void saveStudent(Student student) {
		// TODO Auto-generated method stub
		
		Object[] sqlParameters = {student.getName(),student.getMobile(),student.getCountry()};
		
		String sql = "insert into students(name,mobile,country) values(?,?,?)";
		
		jdbcTemplate.update(sql, sqlParameters);
		
		System.out.println("1 record updated...");
	}

	@Override
	public Student getStudent(int id) {
		String sql = "SELECT * FROM STUDENTS WHERE ID=?";
		Student student = jdbcTemplate.queryForObject(sql, new StudentRowMapper(), id);
		return student;
	}

	@Override
	public void update(Student student) {
		// TODO Auto-generated method stub
		String sql = "UPDATE STUDENTS SET name=?,mobile=?,country=? WHERE id=?";
		jdbcTemplate.update(sql, student.getName(),student.getMobile(),student.getCountry(),student.getId());
		System.out.println("1 record updated..");
	}

	@Override
	public void deleteStudent(int id) {
		String sql = "DELETE FROM STUDENTS WHERE ID=?";
		jdbcTemplate.update(sql, id);
		
	}

	
	
}
