package web.mybatis.dao;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import web.mybatis.service.FactoryService;
import web.mybatis.vo.InquiryVO;
import web.mybatis.vo.MemberVO;
import web.mybatis.vo.ReservationVO;
import web.mybatis.vo.ReserverVO;

public class MyHomeDAO {
	public static MemberVO getMemName(int u_code) {
		  SqlSession ss = FactoryService.getFactory().openSession();
	        try {
	            return ss.selectOne("member.getMemName", u_code);
	        } finally {
	            ss.close();
	        }
	    }
	
	public static int countCoupon(int u_code) {
		SqlSession ss = FactoryService.getFactory().openSession();
		try {
            return ss.selectOne("issuedCoupon.getCouponCount", u_code);
        } finally {
            ss.close();
        }
	
	}
	public static int delCouponCount(int u_code) {
		SqlSession ss = FactoryService.getFactory().openSession();
		try {
			return ss.selectOne("issuedCoupon.delCouponCount",u_code);
		} finally {
			ss.close();
		}
		
	}
	
	public static ReservationVO[] MyHomeGetList(int u_code) {
		ReservationVO[] rvo = null;
		SqlSession ss = FactoryService.getFactory().openSession();

		//예약자 찾기(u_code & rsvr_time -> rsvr_code)
		List<ReserverVO> list = ss.selectList("reserver.getMyhomeList", u_code);

		//rsvr_code -> reservationVO
		List<ReservationVO> rvo_list = new ArrayList<ReservationVO>();

		for(ReserverVO rvo_temp : list) {
			ReservationVO tmp = ss.selectOne("reservation.getReservation", rvo_temp.getRsvr_code());
			if(tmp != null)
				rvo_list.add(tmp);
		}
		rvo = new ReservationVO[rvo_list.size()];
		rvo_list.toArray(rvo);

		ss.close();

		return rvo;
	}

}
	
	