package web.main.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class MovieDetailAction implements Action{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		return "jsp/movie/movieDetail.jsp";
	}

}