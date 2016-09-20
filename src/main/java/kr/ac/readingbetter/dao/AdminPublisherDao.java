package kr.ac.readingbetter.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.readingbetter.vo.PublisherVo;

@Repository
public class AdminPublisherDao {

	@Autowired
	private SqlSession sqlSession;

	public List<PublisherVo> getList(PublisherVo vo) {
		List<PublisherVo> list = sqlSession.selectList("adminpublisher.list", vo);
		return list;
	}

	public void insert(PublisherVo vo) {
		sqlSession.insert("adminpublisher.insert", vo);
	}
}