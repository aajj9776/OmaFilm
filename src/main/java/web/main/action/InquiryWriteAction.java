package web.main.action;

import web.mybatis.dao.SinquiryDAO;
import web.mybatis.vo.MemberVO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class InquiryWriteAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		

		String title = request.getParameter("title");
		String content = request.getParameter("content");

		Object obj = request.getSession().getAttribute("mvo");
		MemberVO mvo = (MemberVO) obj;

		 if (mvo != null) {
			 request.getSession().setAttribute("u_code", mvo.getU_code());
			 Object uCodeObj = request.getSession().getAttribute("u_code");
			 int u_code = (int)uCodeObj; // Integer로 형변환
		     int cnt = SinquiryDAO.add(u_code, title, content); 
		     request.getSession().setAttribute("successMessage", "문의가 등록되었습니다.");
		     return "jsp/serviceCenter/inquiry_success.jsp";
		 } else {
			 request.getSession().setAttribute("loginErrorMessage", "로그인이 필요한 서비스입니다.");
			 return "jsp/login/login_1.jsp";
		 }

	    
	
		}

	
	}


