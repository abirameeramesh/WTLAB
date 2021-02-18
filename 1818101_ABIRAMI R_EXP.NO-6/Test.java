import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.*;
import javax.servlet.http.*;
public class Test extends HttpServlet{
	public void doGet(HttpServletRequest request,HttpServletResponse response) 
		throws IOException, ServletException{
		response.setContentType("text/html");
		PrintWriter out =response.getWriter();
		out.println("<head>");
		out.println("<title>Session Attending using apache</title>");
		out.println("</head>");
		out.println("<body bgcolor=\"black\">");
		HttpSession session=request.getSession();
		Integer c = (Integer)session.getAttribute("count");
		if(session.isNew())
		{
			String dataName = request.getParameter("uname");
			c=1;
			if(dataName!=null && dataName.length()>0)
			{
				session.setAttribute("name",dataName);
			}
			out.println("This is the first time you're visiting this servlet");
			out.println("</h1>");
			session.setAttribute("count",c);
		}
		else
		{
			out.println(session.getAttribute("name"));
			out.println(":");
			c++;
			out.println("you have visited");
			out.println("<span style='color: red'>"+ c +"</span>");
			out.println("times");
			session.setAttribute("count",c);
			out.println("</h1>");
		}
		out.println("</body>");
		out.println("</html>");
       }
}
		