/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controller;

import Model.Product;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;

/**
 *
 * @author haiqd
 */
public class ProductController extends HttpServlet{

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //check authen
        HttpSession session = req.getSession();
        if(session.getAttribute("account") == null){
            req.setAttribute("mess", "Access Deny!!");
            req.getRequestDispatcher("ShowMessage.jsp").forward(req, resp);
        }
        
        Product p = new Product();
        ArrayList<Product> listProduct = p.getListProductÌ£();
        req.setAttribute("listProduct", listProduct);
        req.getRequestDispatcher("ListProduct.jsp").forward(req, resp);
    }
    
}
