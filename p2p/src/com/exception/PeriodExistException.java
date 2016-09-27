package com.exception;

public class PeriodExistException extends Exception {

	private static final long serialVersionUID = 1L;

	public PeriodExistException() {

	}

	public PeriodExistException(String message) {
		super(message);
	}

	public PeriodExistException(Throwable cause) {
		super(cause);
	}

	public PeriodExistException(String message, Throwable cause) {
		super(message, cause);
	}
}