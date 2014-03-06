package com.taotaoti.professor.error;

public enum ProfessorError {
	PROFESSOR_NAME_LIMT(200,"Name length exceeds limit ","名称超过限度"),
	INVALID_OR_DUPLICATE_ORI_CREATIVE_ID(2002, "Invalid or duplicate creative id", "非法或者重复的创意ID");
	
	
	
	private int code = 0;
	private String message = null;
	private String resourceMessage = null;

	private ProfessorError(int code, String message, String resourceMessage) {
		this.code = code;
		this.message = message;
		this.resourceMessage = resourceMessage;
	}

	public int getCode() {
		return code;
	}

	public String getMessage() {
		return message;
	}

	public String getResourceMessage() {
		return resourceMessage;
	}

}
