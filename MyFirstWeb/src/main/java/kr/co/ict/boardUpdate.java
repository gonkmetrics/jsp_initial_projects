package kr.co.ict;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.ict.domain.BoardDAO;

/**
 * Servlet implementation class boardUpdate
 */
@WebServlet("/boardUpdate")
public class boardUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public boardUpdate() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String bTitle = (String)(request.getParameter("bUpdateTitle"));
		String bText = (String)(request.getParameter("bUpdateText"));
		String bAuthor = (String)(request.getParameter("bUpdateAuthor"));
		int bno = Integer.parseInt(request.getParameter("bnoUpdate"));
		BoardDAO dao = BoardDAO.getInstance();
		dao.updateBoard(bTitle, bText, bAuthor, bno);
		System.out.println("updated successfully");
		RequestDispatcher dp = request.getRequestDispatcher("board/boardModificationDash.jsp");
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
