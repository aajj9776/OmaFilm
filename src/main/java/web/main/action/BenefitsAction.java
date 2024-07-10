package web.main.action;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import web.mybatis.dao.BenefitsDAO;
import web.mybatis.vo.NoticeVO;

public class BenefitsAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws IOException {

		int cnt = BenefitsDAO.getCount();

		NoticeVO[] bar = BenefitsDAO.getBlist();


		//위의 배열 ar을 jsp에서 표현하기 위해 request에 저장하자
		request.setAttribute("bar", bar);
		request.setAttribute("cnt", cnt);

		return "jsp/event/benefits.jsp";

	}

}