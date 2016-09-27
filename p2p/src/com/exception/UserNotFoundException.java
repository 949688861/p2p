package com.exception;

public class UserNotFoundException extends Exception {

	private static final long serialVersionUID = 1L;

	public UserNotFoundException() {
		
	}

	public UserNotFoundException(String arg0) {
		super(arg0);
	}

	public UserNotFoundException(Throwable arg0) {
		super(arg0);
	}

	public UserNotFoundException(String arg0, Throwable arg1) {
		super(arg0, arg1);
	}
}