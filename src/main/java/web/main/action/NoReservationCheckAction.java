package web.main.action;

import java.io.IOException;
import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import web.main.util.Paging;
import web.mybatis.dao.ReservationDAO;
import web.mybatis.vo.ReserverVO;
import web.mybatis.vo.ScreeningScheduleVO;

public class NoReservationCheckAction implements Action{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String birth = request.getParameter("birth");
		String login = request.getParameter("res");
		
		Map<String, String> map = new HashMap<>();
		
		map.put("name", name);
		map.put("email", email);
		map.put("password", password);
		map.put("birth", birth);
		//map값 다 들어옴
		System.out.println(map);
		
		int res = ReservationDAO.loginNoReserver(map);
					
		if( name != null && email != null && password != null && birth != null) {
			if(res > 0) {
				request.setAttribute("res", res);
				System.out.println("로그인성공");
				request.getSession().setAttribute("info", map);
				return "jsp/reservation/noReserverSuccess.jsp";
			} else {
				System.out.println("로그인실패");
				return "jsp/login/login_2.jsp";
			}
		} else if ( login != null){
			System.out.println("들어옴");
			
			HttpSession session = request.getSession();
		    Map<String, String> userInfo = (Map<String, String>) session.getAttribute("info");
		    ReserverVO[] list = ReservationDAO.selectReserver(userInfo); 
		    ReserverVO[] cancel_list = ReservationDAO.getNonMemCancelList(userInfo);

			for (ReserverVO rvo : list) {
				ScreeningScheduleVO ssvo = rvo.getSsvo();
				String ss_time = ssvo.getSs_time();
				System.out.println(ss_time);
			}

			/*List<ReserverVO> pastScreenings = new ArrayList<>();
			List<ReserverVO> futureScreenings = new ArrayList<>();

			//현재 날짜와 시간을 구한다
			Date date = new Date();

			//리스르로부터 예매시간을 가져와서 시간이 지난 예매의 리스트를 가져온다
			for (ReserverVO reservation : list) {
				ScreeningScheduleVO svo = reservation.getSsvo();
				String ss_time = svo.getSs_time();
				String[] ss_time_split = ss_time.split(" ");
				String[] ss_time_split2 = ss_time_split[1].split(":");
				String[] ss_time_split3 = ss_time_split[0].split("-");
				int year = Integer.parseInt(ss_time_split3[0]);
				int month = Integer.parseInt(ss_time_split3[1]);
				int day = Integer.parseInt(ss_time_split3[2]);
				int hour = Integer.parseInt(ss_time_split2[0]);
				int min = Integer.parseInt(ss_time_split2[1]);
				int sec = ss_time_split2.length > 2 ? Integer.parseInt(ss_time_split2[2]) : 0;
				Date ss_date = new Date(year - 1900, month - 1, day, hour, min, sec);

				if (date.after(ss_date)) {
					pastScreenings.add(reservation);
				} else {
					futureScreenings.add(reservation);
				}
			}*/
		    
		    request.setAttribute("list", list);
		    request.setAttribute("cancel_list", cancel_list);
			/*request.setAttribute("pastScreenings", pastScreenings);
			request.setAttribute("futureScreenings", futureScreenings);*/
		    int cnt = ReservationDAO.selectCnt(userInfo);
		    System.out.println(cnt);
			request.setAttribute("cnt", cnt);
				
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
			
			return "jsp/reservation/noReservationCheck.jsp";
		}
		
		return null;
		
		
	}


}
