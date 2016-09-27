package com.exception;

public class SamePasswordException extends Exception {

	private static final long serialVersionUID = 1L;

	public SamePasswordException() {
		
	}

	public SamePasswordException(String message) {
		super(message);
	}

	public SamePasswordException(Throwable cause) {
		super(cause);
	}

	public SamePasswordException(String message, Throwable cause) {
		super(message, cause);
	}
}