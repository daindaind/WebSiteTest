package com.board.dao;

import com.board.domain.MemberVO;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAOImpl implements MemberDAO {
	
	private static String namespace = "com.board.mappers.member";
	
	@Inject SqlSession sql;
	// 회원가입

	@Override
	public void register(MemberVO vo) throws Exception {
		sql.insert(namespace + ".register", vo);
	}
	
	@Override
	public MemberVO login(MemberVO vo) throws Exception {
		
		return sql.selectOne(namespace + ".login", vo);
	}
	
	// 업데이트와 마찬가지로 흐름은 같습니다.
	@Override
	public void memberDelete(MemberVO vo) throws Exception {
		// MemberVO에 담긴 값들을 보내줍니다.
		// 그럼 xml에서 memberMapper.memberDelete에 보시면
		//  #{userId}, #{userPass}에 파라미터값이 매칭이 되겠지요.
		sql.delete(namespace + ".memberDelete", vo);
		
	}
	
	// 패스워드 체크
	@Override
	public int passChk(MemberVO vo) throws Exception {
		int result = sql.selectOne(namespace + ".passChk", vo);
		return result;
	}
	
	// 아이디 중복 체크
	@Override
	public int idChk(MemberVO vo) throws Exception {
		int result = sql.selectOne(namespace + ".idChk", vo);
		return result;
	}
	
}
