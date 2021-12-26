package com.bitc.board.service;

import java.util.List;

import com.bitc.board.dto.BoardDto;

// Controller에서 사용할 비지니스 로직의 사용방법을 제공
public interface BoardService {

//	게시판의 게시글 목록을 불러오는 메서드
	List<BoardDto> selectBoardList() throws Exception;
}
