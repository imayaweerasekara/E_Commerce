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

@WebServlet(name = "RegisterServlet", value = "/Register")
public class RegisterServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        String role = req.getParameter("role");

        try (Session session = lk.ijse.Config.FactoryConfiguration.getInstance().getSession()) {
            Transaction transaction = session.beginTransaction();

            User user = new User();
            user.setUsername(username);
            user.setEmail(email);
            user.setPassword(password);
            user.setRole(role);

            session.save(user);
            transaction.commit();

            resp.getWriter().write("<h3 style='color: green;'>User registered successfully!</h3>");
        } catch (Exception e) {
            resp.getWriter().write("<h3 style='color: red;'>Error registering user: " + e.getMessage() + "</h3>");
        }
    }
}
