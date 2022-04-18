package kr.co.ict;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ServletCustom
 */
@WebServlet("/spring")
public class ServletCustom extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletCustom() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		System.out.println("spring 최초접속");
		// TODO Auto-generated method stub
	}

	/**
	 * @see Servlet#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
		System.out.println("spring 자료가 서버 종료로 파기됩니다");
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	/*
	진입점: http://localhost:8080/MyFirstWeb/spring?jsp=쟈스피&boot=부트부트
	(source: ServletCustom.java)
	-----------
	18번라인: 어노테이션의 대상 서블릿(/spring) 접속, 서블릿 생성 (instantiated)
	25번라인: HttpServlet클레스의 속성을 상속받음
	33번라인: init, 서블릿이 시작함
	48번라인: /spring 접속 감지 - 출력
	47번라인: GET request인 경우, doGet()실행
	54번라인: jsp변수에 "부트부트" 저장
	54번라인: boot변수에 "부트부트" 저장
	55번라인: jsp파라미터 값 : 쟈스피 - 출력
	56번라인: boot파라미터 값 : 부트부트 - 출력
	65번라인: jsp변수 값 화면에 전달준비
	66번라인: boot변수 값 화면에 전달준비
	71번라인: 묵적지 기입
	73번라인: jsp, boot 값은 목적지로전송
	...
	39번라인: time="1000", 섭블릿이 파기됨.
	-----------
	결과: servletForm/springResult.jsp 들어간 뒤, boot, spring 값이 화면에 나옴.
	 */
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		System.out.println("spring 접속 감지");
		String jsp = request.getParameter("jsp");
		String boot = request.getParameter("boot");
		String jpa = request.getParameter("jpa");
		System.out.println(jsp);
		System.out.println(boot);
		request.setAttribute("jsp",jsp);
		request.setAttribute("boot",boot);
		request.setAttribute("jpa",jpa);
		//response.sendRedirect("http://localhost:8080/MyFirstWeb/servletForm/springResult.jsp");
		RequestDispatcher dp = request.getRequestDispatcher("servletForm/springResult.jsp");
		dp.forward(request, response);
	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("포스트방식 접근 감지");
		request.setCharacterEncoding("UTF-8");
		String jsp = request.getParameter("jsp");
		String boot = request.getParameter("boot");
		String jpa = request.getParameter("jpa");
		System.out.println(jsp);
		System.out.println(boot);
		request.setAttribute("jsp",jsp);
		request.setAttribute("boot",boot);
		request.setAttribute("jpa",jpa);
		RequestDispatcher dp = request.getRequestDispatcher("servletForm/springResult.jsp");
		dp.forward(request, response);
		
	}

}
