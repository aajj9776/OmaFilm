package web.main.action;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import web.main.util.Paging;
import web.mybatis.dao.MovieListDAO;
import web.mybatis.vo.MovieListVO;

public class MovieListAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		Paging page = new Paging(20, 5);
		
		String cPage = request.getParameter("cPage");
		String type = request.getParameter("type");
		
		//전체페이지 수를 구하기
		page.setTotalRecode(MovieListDAO.getCount());
		
		int cnt = MovieListDAO.getCount();
		
		
		//현재페이지값 받기
		if(cPage != null) {
			//int nowPage = Integer.parseInt(cPage);
			//page.setNowPage(nowPage);
			page.setNowPage(Integer.parseInt(cPage));
			//이때!
			//게시물을 추출할 때 사용되는 begin과 end과 구해지고
			//시작페이지(startPage)와 끝페이지(endPage)도 구해졌다.
			
		}else
			page.setNowPage(1);
		
		MovieListVO[] mar = MovieListDAO.getList(page.getBegin(), page.getEnd(), null);
		//위의 배열 ar을 jsp에서 표현하기 위해 request에 저장하자
		request.setAttribute("mar", mar);
		request.setAttribute("page", page);
		request.setAttribute("cnt", cnt);
		request.setAttribute("type", type);

		
		return "jsp/movie/movieList.jsp";
	}

}