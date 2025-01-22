package lk.ijse;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

@WebServlet(name = "AddProductServelet" , value = "/add-product")
public class AddProductServelet extends HttpServlet {
    String DB_URL = "jdbc:mysql://localhost:3306/E_Commerce";
    String DB_USER = "root";
    String DB_PASSWORD = "Ijse@123";

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // Retrieve form parameters
        String name = req.getParameter("product_name");
        String qty = req.getParameter("product_qty");
        String price = req.getParameter("product_price");

       /* // Validate inputs
        if (name == null || qty == null || price == null || name.isEmpty() || qty.isEmpty() || price.isEmpty()) {
            resp.sendRedirect("add-product.jsp?error=Invalid input values");
            return;
        }
*/
        try {
            // Load MySQL driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establish connection to the database
            Connection connection = DriverManager.getConnection
                    (DB_URL, DB_USER, DB_PASSWORD);

            // SQL query (corrected with 3 placeholders)
            String sql = "INSERT INTO product (name, qty, price) VALUES (?, ?, ?)";
            PreparedStatement pstm = connection.prepareStatement(sql);

            // Set parameter values
            pstm.setString(1, name); // Set name as a string
            pstm.setInt(2, Integer.parseInt(qty)); // Convert qty to integer
            pstm.setString(3, price); // Convert price to BigDecimal

            // Execute the query
            int effectedRowCount = pstm.executeUpdate();

            // Handle success or failure
            if (effectedRowCount > 0) {
                resp.sendRedirect("add-product.jsp?message=Product added successfully");
            } else {
                resp.sendRedirect("add-product.jsp?error=Failed to add product");
            }

            // Close resources
            pstm.close();
            connection.close();

        } catch (Exception e) {
            // Handle invalid number inputs for qty or price
            e.printStackTrace();
            resp.sendRedirect("add-product.jsp?error=Invalid number format for quantity or price");
        }

    /*protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("product_name");
        String qty = req.getParameter("product_qty");
        String price = req.getParameter("product_price");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection
                    (DB_URL, DB_USER, DB_PASSWORD);
            String sql = "insert into product (name, qty, price) values(?,?,?,?)";
            PreparedStatement pstm = connection.prepareStatement(sql);
            pstm.setString(1, name);
            pstm.setString(2, qty);
            pstm.setString(3, price);
            int effectedRowCount = pstm.executeUpdate();
            if (effectedRowCount > 0) {
                resp.sendRedirect(
                        "add-product.jsp?message= product added successfully"
                );
            }else {
                resp.sendRedirect(
                        "add-product.jsp?error=Fail to added ! "
                );
            }
        } catch (Exception e) {
            e.printStackTrace();
            resp.sendRedirect(
                    "add-product.jsp?error=Fail to added ! "
            );
        }
    }*/
}}
