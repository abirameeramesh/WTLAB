import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.*;
import javax.servlet.http.*;
public class TestServlet extends HttpServlet{
	public void doGet(HttpServletRequest request,HttpServletResponse response) 
		throws IOException, ServletException{
		response.setContentType("text/html");
		PrintWriter out =response.getWriter();
		out.println("<head>");
		out.println("<title>1818101-Servlet test using apache</title>");
		out.println("</head>");
		out.println("<body bgcolor=\"black\">");
		out.println("<div style='font-family:Comic Sans MS, Comic Sans, cursive;font-stretch: extra-condensed;font-weight: 300;font-style: italic;text-align:center;color:white;position: absolute;top: 50%;left: 50%;margin-right: -50%;transform: translate(-50%, -50%)'>");
		out.println("<h1 color='white' >The servlet is running successfully....<h1>");
		out.println("</div>");
		out.println("</body>");
		out.println("</html>");
       }
}
		