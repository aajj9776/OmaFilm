package web.main.action;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import web.mybatis.dao.MyHomeDAO;
import web.mybatis.vo.MemberVO;

public class CheckPwAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		 Object obj = request.getSession().getAttribute("mvo");
		 MemberVO mvo = (MemberVO) obj;
		 
		 if (mvo != null) {
		        int u_code = mvo.getU_code();
		        String inputpw = request.getParameter("inputpw");
		        if (inputpw != null) {
		            if (inputpw.equals(mvo.getU_pw())) {
		                return "/jsp/myPage/personInfor.jsp";
		                
		            } else {
		                request.setAttribute("check", 1);
		                return "/jsp/myPage/checkPw.jsp";
		            }
		        } else {
		            request.setAttribute("check", 2);
		            return "/jsp/myPage/checkPw.jsp";
		        }
		    } else {
		        return "/jsp/login/login_1.jsp";
		    }
	}
}