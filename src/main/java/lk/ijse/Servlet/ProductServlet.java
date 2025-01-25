package lk.ijse.Servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lk.ijse.Entity.Product;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.io.IOException;

@WebServlet(name = "ProductServlet", value = "/Product")
public class ProductServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=UTF-8");

        try {
            // Get form parameters
            int productId = Integer.parseInt(req.getParameter("productId"));
            String action = req.getParameter("action");

            // Hibernate session setup
            try (Session session = lk.ijse.Config.FactoryConfiguration.getInstance().getSession()) {
                Transaction transaction = session.beginTransaction();

                if ("add".equals(action)) {
                    // Add a new product
                    String productName = req.getParameter("productName");
                    int categoryId = Integer.parseInt(req.getParameter("categoryId"));
                    double price = Double.parseDouble(req.getParameter("price"));
                    int quantity = Integer.parseInt(req.getParameter("quantity"));

                    Product product = new Product(productId, productName, categoryId, price, quantity);
                    session.save(product);
                    resp.getWriter().write("<h3 style='color: green;'>Product added successfully!</h3>");

                } else if ("update".equals(action)) {
                    // Update an existing product
                    Product product = session.get(Product.class, productId);
                    if (product != null) {
                        product.setProductName(req.getParameter("productName"));
                        product.setCategoryId(Integer.parseInt(req.getParameter("categoryId")));
                        product.setPrice(Double.parseDouble(req.getParameter("price")));
                        product.setQuantity(Integer.parseInt(req.getParameter("quantity")));
                        session.update(product);
                        resp.getWriter().write("<h3 style='color: green;'>Product updated successfully!</h3>");
                    } else {
                        resp.getWriter().write("<h3 style='color: red;'>Product not found!</h3>");
                    }

                } else if ("delete".equals(action)) {
                    // Delete a product
                    Product product = session.get(Product.class, productId);
                    if (product != null) {
                        session.delete(product);
                        resp.getWriter().write("<h3 style='color: green;'>Product deleted successfully!</h3>");
                    } else {
                        resp.getWriter().write("<h3 style='color: red;'>Product not found!</h3>");
                    }
                }

                transaction.commit();
            }
        } catch (Exception e) {
            resp.getWriter().write("<h3 style='color: red;'>Error: " + e.getMessage() + "</h3>");
            e.printStackTrace();
        }
    }
}
