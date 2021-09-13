package com;

public class Employee {
	int eno;
	String ename;
	Float esal;
	public Employee(int eno, String ename, Float esal) {
		super();
		this.eno = eno;
		this.ename = ename;
		this.esal = esal;
		otp='xxxxxxxx'
		
	}
	void printDetails() {
		System.out.println("The Values are "+eno+" "+ename+" "+"  "+esal);
	}	
}
