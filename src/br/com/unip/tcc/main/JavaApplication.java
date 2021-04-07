package br.com.unip.tcc.main;

import java.sql.*;

public class JavaApplication {

	public static void main(String[] args) {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tcc", "root", "joao4638");
			
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("select * from usuarios");
			
			while(rs.next())  
			System.out.println(rs.getInt(1)+"  "+rs.getString(2)+"  "+rs.getString(3));  
			con.close(); 
		}catch(Exception e){ 
			System.out.println(e);
			}  
	}

}
