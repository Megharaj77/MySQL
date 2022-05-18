package com.skillsoft.throwexception;

import java.util.Scanner;

import javax.naming.InvalidNameException;

public class ThrowMultipleException {

//	public static void main(String[] args) throws Exception{
//		
//		Scanner input = new Scanner(System.in);
//		
//		System.out.println("Enter user name");
//		String name = input.next(); 
//		
//		System.out.println("Enter a GPA");
//		float gpa = input.nextFloat();
//		
//		input.close();
//		
//		validateStudent(name,gpa);
//	}
//	
//	public static void validateStudent(String userId, float gpa) throws InvalidNameException, IllegalArgumentException{
//		
//		if(userId.startsWith("loony_")) {
//			System.out.println("The username checks out..");
//		}
//		else {
//			throw new InvalidNameException("The username is not in the correct format");
//		}
//		
//		if(gpa > 0 && gpa <= 4.33) {
//			System.out.println("That is a valid GPA. Processing eligibility....");
//		}
//		
//		else {
//			throw new IllegalArgumentException("Sorry. A GPA must have a value between 0 and 4.33..");
//		}
//	}
	
	
	
	
	
	
	
	
	
	
//public static void main(String[] args) throws Exception{
//		
//		Scanner input = new Scanner(System.in);
//		
//		System.out.println("Enter user name");
//		String name = input.next(); 
//		
//		System.out.println("Enter a GPA");
//		float gpa = input.nextFloat();
//		
//		input.close();
//		
//		try {
//			intermediateFunction(name,gpa);
//		}catch(IllegalArgumentException | InvalidNameException e){
//			
//			System.out.println("An exception was thrown "+ e.getClass());
//			e.printStackTrace();
//		}
//		
//	}
//
//   public static void intermediateFunction(String userId,float gpa) throws InvalidNameException, IllegalArgumentException{
//	   
//	   validateStudent(userId,gpa);
//   }
//	
//	public static void validateStudent(String userId, float gpa) throws InvalidNameException, IllegalArgumentException{
//		
//		if(userId.startsWith("loony_")) {
//			System.out.println("The username checks out..");
//		}
//		else {
//			throw new InvalidNameException("The username is not in the correct format");
//		}
//		
//		if(gpa > 0 && gpa <= 4.33) {
//			System.out.println("That is a valid GPA. Processing eligibility....");
//		}
//		
//		else {
//			throw new IllegalArgumentException("Sorry. A GPA must have a value between 0 and 4.33..");
//		}
//	}
	
	
	
	
	
	
	
public static void main(String[] args) throws Exception{
		
		Scanner input = new Scanner(System.in);
		
		System.out.println("Enter user name");
		String name = input.next(); 
		
		System.out.println("Enter a GPA");
		float gpa = input.nextFloat();
		
		input.close();
		
		intermediateFunction(name,gpa);
		
	}

   public static void intermediateFunction(String userId,float gpa) throws InvalidNameException, IllegalArgumentException{
	   
	   try {
			validateStudent(userId,gpa);
		}catch(IllegalArgumentException | InvalidNameException e){
			
			System.out.println("An exception was thrown "+ e.getClass());
			e.printStackTrace();
		}
	   
   }
	
	public static void validateStudent(String userId, float gpa) throws InvalidNameException, IllegalArgumentException{
		
		if(userId.startsWith("loony_")) {
			System.out.println("The username checks out..");
		}
		else {
			throw new InvalidNameException("The username is not in the correct format");
		}
		
		if(gpa > 0 && gpa <= 4.33) {
			System.out.println("That is a valid GPA. Processing eligibility....");
		}
		
		else {
			throw new IllegalArgumentException("Sorry. A GPA must have a value between 0 and 4.33..");
		}
	}
}
