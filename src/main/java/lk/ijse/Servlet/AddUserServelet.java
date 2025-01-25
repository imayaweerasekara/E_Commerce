package lk.ijse.Servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lk.ijse.Entity.User;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.io.IOException;

@WebServlet(name = "AddUserServelet" , value = "/AddUser")
public class AddUserServelet extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=UTF-8");

        try {
            // Retrieve user inputs
            int userId = Integer.parseInt(req.getParameter("userId"));
            String userName = req.getParameter("userName");



            // Create User object
            User user = new User(userId, userName);

            // Hibernate session handling
            try (Session session = lk.ijse.Config.FactoryConfiguration.getInstance().getSession()) {
                Transaction tx = session.beginTransaction();
                session.save(user);
                tx.commit();
            }

            // Send success response to client
            resp.getWriter().write("<h3 style='color: green;'>User saved successfully!</h3>");
        } catch (NumberFormatException e) {
            resp.getWriter().write("<h3 style='color: red;'>Invalid input for User ID. Please enter a valid number.</h3>");
            e.printStackTrace();
        } catch (Exception e) {
            resp.getWriter().write("<h3 style='color: red;'>Error saving user: " + e.getMessage() + "</h3>");
            e.printStackTrace();
        }
    }

}
