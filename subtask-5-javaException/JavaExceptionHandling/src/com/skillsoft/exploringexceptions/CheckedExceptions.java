package com.skillsoft.exploringexceptions;

import java.io.DataInputStream;
import java.io.EOFException;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

public class CheckedExceptions {
	
//	public static void main(String[] args) {
//		
//		try {
//			FileReader file = new FileReader("C:\\Users\\252008\\Documents\\workspace-spring-tool-suite-4-4.14.0.RELEASE\\exceptions\\firstfile.txt");
//		} catch (FileNotFoundException e) {
//			
//			e.printStackTrace();
//			
//			System.out.println("\nCaught the exception");
//		}
//		
//	}
	
	
	
	
//	public static void main(String[] args) throws FileNotFoundException {
//		
//		try {
//			FileReader file = new FileReader("C:\\Users\\252008\\Documents\\workspace-spring-tool-suite-4-4.14.0.RELEASE\\exceptions\\firstfile.txt");
//		} catch (FileNotFoundException e) {
//			
//			e.printStackTrace();
//			
//			System.out.println("\nThe file was not found. Create firstfile.txt and re-run.");
//		}
//		
//		System.out.println("The code execution is completed!");
//	}
	
	
	
	
	
	public static void main(String[] args) throws IOException{
		
		System.out.println("Contents of the file:\n:");
		
		FileInputStream myfile = null;
		try {
			myfile = new FileInputStream("C:\\Users\\252008\\Documents\\workspace-spring-tool-suite-4-4.14.0.RELEASE\\exceptions\\myfile.txt");
		    
			DataInputStream readFile = new DataInputStream(myfile);
			
			while(true) {
				
				System.out.println(readFile.readUTF());
			}
		
		}catch(EOFException e) {
			
			System.out.println("An EOFException has been thrown");
			e.printStackTrace();
		}
	}
	
}
