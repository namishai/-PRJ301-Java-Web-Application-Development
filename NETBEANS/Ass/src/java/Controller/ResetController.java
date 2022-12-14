/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controller;

import Model.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Random;

/**
 *
 * @author haiqd
 */
public class ResetController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String account = req.getParameter("username");
        String dob = req.getParameter("dob");

        User u = new User();
        if (u.checkUser(account, dob)) {
            //Thong tin ton tai
            //Tao 1 mat khau moi
            Random r = new Random();
            String error = "";
            String newPass = r.nextInt(1000) + "";
            error = "Your new password is " + newPass;
            //Luu vao DB
            u.updatePass(account, newPass);
            //Tra ket qua ve cho login
            req.setAttribute("username", account);
            req.setAttribute("password", newPass);
            req.setAttribute("error", error);
            req.getRequestDispatcher("index_homepage.jsp").forward(req, resp);
        } else {
            String error = "";
            error = "Please check your Username or DOB!!";
            req.setAttribute("error", error);
            req.getRequestDispatcher("index_resetpass.jsp").forward(req, resp);
            //Tra ve trong ForgotPassword
        }
        //Trả kết quả về 
    }
}
