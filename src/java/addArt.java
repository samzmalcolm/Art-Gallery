/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;



@WebServlet("/uploadFiles")
@MultipartConfig(
        fileSizeThreshold   = 1024 * 1024 * 10,  // 1 MB
        maxFileSize         = 1024 * 1024 * 25, // 10 MB
        maxRequestSize      = 1024 * 1024 * 50 // 15 MB
        
)

/**
 *
 * @author usama
 */
public class addArt extends HttpServlet {

        
    String folderName="\\images";
    String uploadPath="C:\\Users\\usama\\OneDrive\\Documents\\NetBeansProjects\\artGallery\\web" + folderName;
    
    
    
     private String extractFileName(Part part)
     {
            String contentDisp= part.getHeader("content-disposition");
            String[] items=contentDisp.split(";");
            for(String s:items)
            {
            if(s.trim().startsWith("filename"))
            {
            return s.substring(s.indexOf("=")+2,s.length()-1);
            }
            }
             return "";
        
  
  }
    
    
    
    
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
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
         
            
                         String username=(String) request.getSession(false).getAttribute("uname");

              Part artPic=request.getPart("artpic");
            String name=request.getParameter("artname");
            String price=request.getParameter("artprice");
            String desc=request.getParameter("artdesc");
                 String picname =extractFileName(artPic);
                String status="For Sale";
                 String profilePicPath;
                 profilePicPath = "C:\\Users\\usama\\OneDrive\\Documents\\NetBeansProjects\\artGallery\\web\\images"+ File.separator+ picname;
              
                 File profilePicDir=new File(profilePicPath);
           
                 artPic.write(folderName);
                 InputStream pic=artPic.getInputStream();
                 Files.copy(pic, Paths.get(profilePicPath), StandardCopyOption.REPLACE_EXISTING);
          
            DbHandler db= new DbHandler();
            db.openConnection();
            
            
            
            
            
             Statement arts = DbHandler.con.createStatement();
            
             ///////////
         
         
         
        String artistname=null;
         
         //////////
            
            // resultset and query execution
           ResultSet rtist = arts.executeQuery("Select name from artist where username='"+username+"'");

           while(rtist.next()){
           artistname= rtist.getString("name");
           } 
            
            
            
            
            
            
            
            
            
             PreparedStatement ps1;
		String query1="insert into arts (name,description,price,status,artist,image) values ('"+name+"','"+desc+"','"+price+"','"+status+"','"+artistname+"','"+picname+"')";
       
            ps1 = DbHandler.con.prepareStatement(query1);
      
	ps1.executeUpdate();
          
            response.sendRedirect("artist.jsp");
            
            
            
            
            
            
            
            
            
            
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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(addArt.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(addArt.class.getName()).log(Level.SEVERE, null, ex);
        }
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
