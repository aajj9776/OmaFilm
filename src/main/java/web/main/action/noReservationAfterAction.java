package web.main.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import com.fasterxml.jackson.databind.ObjectMapper;
import org.apache.ibatis.type.TypeReference;
import web.mybatis.dao.ReservationDAO;
import web.mybatis.vo.ReserverVO;

public class noReservationAfterAction implements Action{
    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
        ObjectMapper mapper = new ObjectMapper();


        List<ReserverVO> list = null;
        list = mapper.readValue(request.getParameter("list"), new TypeReference<List<ReserverVO>>(){});

        return "";
    }
}
