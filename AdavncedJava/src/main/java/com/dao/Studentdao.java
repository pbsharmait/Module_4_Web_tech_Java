package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.List;

import com.bean.student;
import com.mysql.jdbc.ResultSet;
import com.util.StudentUtil;

public class Studentdao {
	
	public static void insertstudent (student s)
	{
		try {
			Connection conn=StudentUtil.creatConnection();
			String sql = "insert into student(fname,lname,email,mobile,address,password) value(?,?,?,?,?,?)";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setString(1,s.getFname());
			pst.setString(2,s.getLname());
			pst.setString(3,s.getEmail());
			pst.setLong(4,s.getMobile());
			pst.setString(5,s.getAddress());
			pst.setString(6,s.getPassword());
			pst.executeUpdate();
			
			
		} catch (Exception e) {
			e.printStackTrace();
		} 
	}

	public static List<student> getALLStudent()
	{
		List<student> list=new ArrayList<student>();
		try {
			Connection conn=StudentUtil.creatConnection();
			String sql="select * from student";
			PreparedStatement pst=conn.prepareStatement(sql);
			java.sql.ResultSet rs=pst.executeQuery();
			while (rs.next())
			{
			student s=new student();
			s.setId(rs.getInt("id"));
			s.setFname(rs.getString("fname"));
			s.setFname(rs.getString("lname"));
            s.setEmail(rs.getString("email"));
            s.setMobile(rs.getLong("mobile"));
			s.setAddress(rs.getString("address"));
			s.setPassword(rs.getString("password"));
			list.add(s);
				
			}
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
			
		}
		
		return list;
		
	}
	public static student getStudent(int id)
	{
		student s=null;
		try {
			Connection conn=StudentUtil.creatConnection();
			String sql="select * from student where id=?";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setInt(1, id);
			java.sql.ResultSet rs=pst.executeQuery();
			if (rs.next())
			{
			s=new student();
			s.setId(rs.getInt("id"));
			s.setFname(rs.getString("fname"));
			s.setFname(rs.getString("lname"));
            s.setEmail(rs.getString("email"));
            s.setMobile(rs.getLong("mobile"));
			s.setAddress(rs.getString("address"));
			s.setPassword(rs.getString("password"));
			
				
			}
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
			
		}
		
		return s;
		
	}
	public static void updatestudent (student s)
	{
		try {
			Connection conn=StudentUtil.creatConnection();
			String sql = "update student set fname=?,lname=?,email=?,mobile=?,address=?,password=? where id=? ";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setString(1,s.getFname());
			pst.setString(2,s.getLname());
			pst.setString(3,s.getEmail());
			pst.setLong(4,s.getMobile());
			pst.setString(5,s.getAddress());
			pst.setString(6,s.getPassword());
			pst.setInt(7,s.getId());
			pst.executeUpdate();
			
			
		} catch (Exception e) {
			e.printStackTrace();
		} 
	}
}
