import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "CounterServlet", urlPatterns = "/count")
public class CounterServlet extends HttpServlet {
    private int hitCount;

    public void init() {
        hitCount = 0;
}
public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    response.setContentType("text/html");

    hitCount++;
    PrintWriter out = response.getWriter();
    String title = "Total Number of Hits";
    out.println(
            "<h1 align = \"center\">" + title + "</h1>\n" +
            "<h2 align = \"center\">" + hitCount + "</h2>\n"
    );
    }
}
