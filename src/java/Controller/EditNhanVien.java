/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.BEAN.Nhanvien;
import model.BO.EditNhanVienBO;

/**
 *
 * @author ADMIN
 */
public class EditNhanVien extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet EditNhanVien</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet EditNhanVien at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String Idnv = request.getParameter("idnv");
        Nhanvien nv = new Nhanvien();
        EditNhanVienBO editnvBO = new EditNhanVienBO();
        nv = editnvBO.getInforNV(Idnv);
        String destination = "/forInfor.jsp";
        request.setAttribute("idnv", Idnv);
        request.setAttribute("name", nv.getHoten());
        request.setAttribute("sdt", nv.getSdt());
        request.setAttribute("email", nv.getEmail());
        // chuyen ngaysinh thanh string cho de xu ly
        Date ngaysinh = nv.getNgaysinh();
        SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");  
        String strNgaysinh = formatter.format(ngaysinh);    
        request.setAttribute("ngaysinh", strNgaysinh);
        request.setAttribute("diachi", nv.getDiachi());
        request.setAttribute("luongcoban", nv.getLuongcoban());
        request.setAttribute("gioitinh", nv.getGioitinh());
        RequestDispatcher rd = getServletContext().getRequestDispatcher(destination);
        rd.forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
