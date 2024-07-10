package web.main.action;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import web.main.util.Paging;
import web.mybatis.dao.MyReservationDAO;
import web.mybatis.vo.ReservationVO;

public class NonMemCancelListAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		String rsrv_code = request.getParameter("rsrv_code");
		
		ReservationVO[] cancel_list = MyReservationDAO.nonMemCancelList(rsrv_code);
		
		request.setAttribute("cancel_list", cancel_list);
		
		
		//rvo 페이징 처리
		Paging page = new Paging(10,5);
		
		String cPage = request.getParameter("cPage");
		if(cancel_list !=null)
			page.setTotalRecode(cancel_list.length);
		if(cPage !=null)
			page.setNowPage(Integer.parseInt(cPage));
		else
			page.setNowPage(1);
		request.setAttribute("page", page);
		
		
		//예매 취소하기
		return "/jsp/reservation/noReservationCheck.jsp";
	}

}
