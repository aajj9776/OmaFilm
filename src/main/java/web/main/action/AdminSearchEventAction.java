package web.main.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import web.main.util.Paging;
import web.mybatis.dao.AdminDAO;
import web.mybatis.vo.NoticeVO;

public class AdminSearchEventAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		String searchCategory = request.getParameter("searchCategory");
        String searchTerm = request.getParameter("searchTerm");

        AdminDAO dao = new AdminDAO();
        List<NoticeVO> eventList = dao.searchEvent(searchCategory, searchTerm);
        request.setAttribute("eventList", eventList);
        
      //rvo 페이징 처리
  		Paging page = new Paging(10,5);
  		
  		String cPage = request.getParameter("cPage");
  		if(eventList !=null)
  			page.setTotalRecode(eventList.size());
  		if(cPage !=null)
  			page.setNowPage(Integer.parseInt(cPage));
  		else
  			page.setNowPage(1);
  		request.setAttribute("page", page);
        
        return "jsp/admin/adminEvent.jsp";
	}

}
