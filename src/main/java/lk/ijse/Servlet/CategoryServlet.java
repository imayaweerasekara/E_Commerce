package lk.ijse.Servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lk.ijse.Entity.Category;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "CategoryServlet", value = "/CategoryServlet")
public class CategoryServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=UTF-8");

        String action = req.getParameter("action");

        try (Session session = lk.ijse.Config.FactoryConfiguration.getInstance().getSession()) {
            Transaction transaction = session.beginTransaction();

            if ("add".equals(action)) {
                // Add category
                int categoryId = Integer.parseInt(req.getParameter("categoryId"));
                String categoryName = req.getParameter("categoryName");
                Category category = new Category(categoryId, categoryName);
                session.save(category);
                resp.getWriter().write("<h3 style='color: green;'>Category added successfully!</h3>");

            } else if ("update".equals(action)) {
                // Update category
                int categoryId = Integer.parseInt(req.getParameter("categoryId"));
                Category category = session.get(Category.class, categoryId);
                if (category != null) {
                    category.setCategoryName(req.getParameter("categoryName"));
                    session.update(category);
                    resp.getWriter().write("<h3 style='color: green;'>Category updated successfully!</h3>");
                } else {
                    resp.getWriter().write("<h3 style='color: red;'>Category not found!</h3>");
                }

            } else if ("delete".equals(action)) {
                // Delete category
                int categoryId = Integer.parseInt(req.getParameter("categoryId"));
                Category category = session.get(Category.class, categoryId);
                if (category != null) {
                    session.delete(category);
                    resp.getWriter().write("<h3 style='color: green;'>Category deleted successfully!</h3>");
                } else {
                    resp.getWriter().write("<h3 style='color: red;'>Category not found!</h3>");
                }

            } else if ("view".equals(action)) {
                // View categories
                List<Category> categories = session.createQuery("FROM Category", Category.class).list();
                for (Category category : categories) {
                    resp.getWriter().write("<tr><td>" + category.getCategoryId() + "</td><td>" + category.getCategoryName() + "</td></tr>");
                }
            }

            transaction.commit();
        } catch (Exception e) {
            resp.getWriter().write("<h3 style='color: red;'>Error: " + e.getMessage() + "</h3>");
            e.printStackTrace();
        }
    }
}
