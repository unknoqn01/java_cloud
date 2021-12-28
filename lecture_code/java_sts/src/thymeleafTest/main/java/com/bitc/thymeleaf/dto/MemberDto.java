package com.bitc.thymeleaf.dto;

import lombok.Data;

@Data
public class MemberDto {

	private String userId;
	private String userPw;
	private String userName;
	private String userEmail;
}
