package web.mybatis.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import web.mybatis.service.FactoryService;
import web.mybatis.vo.NoticeVO;

public class BenefitsDAO {
	
	public static int getCount() {
		SqlSession ss = FactoryService.getFactory().openSession();
		int cnt = ss.selectOne("notice.bcount");
		
		ss.close();
		
		return cnt;
	}
	
	public static NoticeVO[] getBlist() {
		NoticeVO[] bar = null;
		
		SqlSession ss = FactoryService.getFactory().openSession();
		
		List<NoticeVO> list = ss.selectList("notice.blist");
		if(list != null && list.size() > 0) {
			bar = new NoticeVO[list.size()];
			list.toArray(bar); //list가 가지는 모든 요소들을 ar 배열에 복사
		}
		
		return bar;
	}
	
	public static NoticeVO view(String n_idx) {
		NoticeVO bvo = null;
		
		SqlSession ss = FactoryService.getFactory().openSession();
		
		bvo = ss.selectOne("notice.bview", n_idx);
		
		return bvo;
	}


}