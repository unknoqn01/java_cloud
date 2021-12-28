package com.bitc.thymeleaf.service;

import java.util.List;

import com.bitc.thymeleaf.dto.MemberDto;

public interface ThymeleafService {

	List<MemberDto> selectMemberList() throws Exception;
}
