package Controlador;

import Modelo.PrestamoBean;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/calculateLoan")
public class PrestamoServelt extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        double Cantidad = Double.parseDouble(request.getParameter("Cantidad"));
        int Meses = Integer.parseInt(request.getParameter("Meses"));

        PrestamoBean loan = new PrestamoBean(Cantidad, Meses);
        request.setAttribute("loan", loan);

        request.getRequestDispatcher("Result.jsp").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}