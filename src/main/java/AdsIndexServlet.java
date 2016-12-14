import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by nicholasturner on 12/14/16.
 */
@WebServlet(name = "AdsIndexServlet", urlPatterns = "/ads")
public class AdsIndexServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //get the list of ads from listAdsDAO
        //make a variable that holds the result of calling all() method on ListAdsDao
        List<Ad> adList = DaoFactory.getAdsDao().all();
        //send that data into the view
        //set parameter on the response
        request.setAttribute("adList", adList);
        //in the view, iterate across the list and output the ads
        request.getRequestDispatcher("/ads/index.jsp").forward(request, response);
    }
}
