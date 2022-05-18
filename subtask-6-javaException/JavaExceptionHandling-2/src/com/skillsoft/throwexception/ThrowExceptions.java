package com.skillsoft.throwexception;

import java.util.Scanner;

public class ThrowExceptions {

//	public static void main(String[] args) {
		
//		System.out.println("Enter your GPA to check your eligibility for admission: ");
//		
//		Scanner inputGPA = new Scanner(System.in);
//		float gpa = inputGPA.nextFloat();
//		inputGPA.close();
//		
//		if(gpa>0 && gpa<=4.33) {
//			System.out.println("That is a valid GPA. Processing eligibility...");
//			
//		}
//		else {
////			System.out.println("Sorry. A GPA must have a value between 0 and 4.33.");
//			
//			throw new IllegalArgumentException("Sorry. A GPA must have a value between 0 and 4.33.");
//		}
		
		
//	}
	
	
	
//	
//	public static void main(String[] args) {
//		
//		System.out.println("Enter your GPA to check your eligibility for admission: ");
//		
//		Scanner inputGPA = new Scanner(System.in);
//		float gpa = inputGPA.nextFloat();
//		inputGPA.close();
//		
//		validateGPA(gpa);
//		
//	}
	
//	public static void validateGPA(float gpa) {
//		
//		if(gpa > 0 && gpa <= 4.33) {
//			
//			System.out.println("That is a valid GPA. Processing eligibility...");
//		}
//		else {
//			
////			throw new IllegalArgumentException("Sorry. A GPA must have a value between 0 and 4.33.");
//			
////			throw new NullPointerException("Sorry. A GPA must have a value between 0 and 4.33.");
//			
//			throw new RuntimeException("Sorry. A GPA must have a value between 0 and 4.33.");
//		}
//	}
	
	
	
	
	

	public static void main(String[] args) throws Exception {
		
		System.out.println("Enter your GPA to check your eligibility for admission: ");
		
		Scanner inputGPA = new Scanner(System.in);
		float gpa = inputGPA.nextFloat();
		inputGPA.close();
		
		validateGPA(gpa);
		
	}
	
public static void validateGPA(float gpa) throws Exception {
		
		if(gpa > 0 && gpa <= 4.33) {
			
			System.out.println("That is a valid GPA. Processing eligibility...");
		}
		else {
			
			throw new Exception("Sorry. A GPA must have a value between 0 and 4.33.");
		}
	}
}
