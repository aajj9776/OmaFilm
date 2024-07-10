package web.main.action;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class NloginAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		request.getSession().setAttribute("nloginMessage", "비회원 예매내역을 확인하기 위해서 비회원 로그인 부탁드립니다.");
		return "jsp/login/login_2.jsp";
	}

}
