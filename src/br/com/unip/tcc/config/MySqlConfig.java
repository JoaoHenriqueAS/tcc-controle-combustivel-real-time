package br.com.unip.tcc.config;

import java.sql.*;
import java.util.Scanner;

public class MySqlConfig {
	
	public static void main(String[] args) {
		
		Scanner user = new Scanner(System.in);
		Scanner pass = new Scanner(System.in);
		
		System.out.println("usuario: ");
		String usuario = user.next();
		
		System.out.println("senha: ");
		String senha = pass.next();
		
		char aspas = '"';
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tcc", "root", "joao4638");
			
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("select * from usuarios where userName = " + aspas + usuario + aspas + "and password = " + aspas + senha + aspas);
			
			while(rs.next())  
			System.out.println(rs.getInt(1)+"  "+rs.getString(2)+"  "+rs.getString(3));  
			con.close(); 
		}catch(Exception e){ 
			System.out.println(e);
			}
		
	}
}
