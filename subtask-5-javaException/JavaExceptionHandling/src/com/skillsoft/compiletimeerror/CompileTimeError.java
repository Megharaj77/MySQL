package com.skillsoft.compiletimeerror;

import java.util.Scanner;

//public class CompileTimeError {
//
//	public static void main(String[] args) {
//		
//		CompileTimeError obj = new CompileTimeError();
//		
//		obj.myMethod();
//	}
//	
//	public void myMethod() {
//		
//		System.out.println("welcome to java programing");
//	}
//	
//	
//}




public class CompileTimeError {

	public static void main(String[] args) {
		
//		System.out.println("Enter any number");
//		
//		Scanner scan = new Scanner(System.in);
//		
//		int x = scan.nextInt();
//		
//		scan.close();
//		
//		System.out.println("You have entered num = "+ x);
		
		
		
		int[] myArray = {10,20,30,40,50};
		
		int totalSum = 0;
		for(int num: myArray) {
			
			totalSum = totalSum +num;
		}
		
	System.out.println("sum elements presents in our array is: "+ totalSum);
		
	}
}