package com.skillsoft.throwexception;

import java.util.InputMismatchException;
import java.util.Scanner;

import javax.naming.InvalidNameException;

public class ChainingExceptions {

	
public static void main(String[] args) throws Exception{
		
		Scanner input = new Scanner(System.in);
		
		System.out.println("Enter user name");
		String name = input.next(); 
		
//		System.out.println("Enter a GPA");
//		 Float gpa = input.nextFloat();
		
		float gpa = 0f;
		try {
			System.out.println("Enter a GPA");
			 gpa = input.nextFloat();
		}catch(InputMismatchException ex) {
//			throw new IllegalArgumentException("A GPA must have numeric value between 0 to 4.33");
			
			gpa = 1.0f;
			
			ex.initCause(new IllegalArgumentException("A GPA must have numeric value between 0 to 4.33") );
			System.out.println("What is the cause of the Exception? "+ ex.getCause());
		}
		
		input.close();
		
		try {
			intermediateFunction(name,gpa);
		}catch(InvalidNameException e) {
			System.out.println(e.getClass() + ": The User name is invalid..");
			e.printStackTrace();
		}
		
	}

   public static void intermediateFunction(String userId,float gpa) throws InvalidNameException{
	   
	   try {
			validateStudent(userId,gpa);
		}catch(IllegalArgumentException e){
			
			System.out.println(e.getClass() + ": GPA is Invalid");
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
