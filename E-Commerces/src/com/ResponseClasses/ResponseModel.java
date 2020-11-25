package com.ResponseClasses;

public class ResponseModel 
{
	private String message,target;
	private boolean success;
	private Object data;
	public ResponseModel() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ResponseModel(String message, String target, boolean success, Object data) {
		super();
		this.message = message;
		this.target = target;
		this.success = success;
		this.data = data;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public String getTarget() {
		return target;
	}
	public void setTarget(String target) {
		this.target = target;
	}
	public boolean isSuccess() {
		return success;
	}
	public void setSuccess(boolean success) {
		this.success = success;
	}
	public Object getData() {
		return data;
	}
	public void setData(Object data) {
		this.data = data;
	}
	
	

}
