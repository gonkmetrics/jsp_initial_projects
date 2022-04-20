package kr.co.ict;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.ict.domain.BoardDAO;
import kr.co.ict.domain.BoardVO;

/**
 * Servlet implementation class boardUpdateFormHandler
 */
@WebServlet("/boardUpdateHandler")
public class boardUpdateFormHandler extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public boardUpdateFormHandler() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		int bno = Integer.parseInt(request.getParameter("bno"));
		BoardVO boardListDetail = new BoardVO();
		BoardDAO dao = BoardDAO.getInstance();
		boardListDetail = dao.getBoardDetail(bno);
		String bTitle = boardListDetail.getTitle();
		String bText = boardListDetail.getContent();
		String bAuthor = boardListDetail.getWriter();
		System.out.println(bTitle);
		System.out.println(bText);
		System.out.println(bAuthor);
		request.setAttribute("bno", bno);
		request.setAttribute("bTitle", bTitle);
		request.setAttribute("bText", bText);
		request.setAttribute("bAuthor", bAuthor);
		RequestDispatcher dp = request.getRequestDispatcher("board/boardUpdateForm.jsp");
		dp.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
