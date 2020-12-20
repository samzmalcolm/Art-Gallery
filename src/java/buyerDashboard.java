/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author usama
 */
public class buyerDashboard extends HttpServlet {

    
 
         
         
         
         public int totalArts;
         
         //////////
      // Artist data  
   
      ArrayList<String> artistName = new ArrayList<String>();
      ArrayList<String> artistPic = new ArrayList<String>();
    
    
       ///////////
           //////////
      // Arts data  
   
      ArrayList<String> artName= new ArrayList<String>();
      ArrayList<String> artPrice = new ArrayList<String>();
      ArrayList<String> artArtist = new ArrayList<String>();
      ArrayList<String> artDes = new ArrayList<String>();
      ArrayList<String> artPic = new ArrayList<String>();
    
    
       ///////////
         
         
         
         
         //////////
      
  
         
         
         
         
         //////////
      // Artist data 
     String [] aName ;
     String [] aPic ;
    
      ///////////
           //////////
      // Artist data 
     String [] artsName ;
     String [] artsDes ;
     String [] artsPrice ;
     String [] artsPic ;
     String [] artsArtist ;

    
      ///////////
         
         
     
     
     
    
    
  
    
    public static String toJavascriptArray(String[] arr){
    StringBuffer sb = new StringBuffer();
    sb.append("[");
    for(int i=0; i<arr.length; i++){
        sb.append("\"").append(arr[i]).append("\"");
        if(i+1 < arr.length){
            sb.append(",");
        }
    }
    sb.append("]");
    return sb.toString();
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
            // db class object 
            DbHandler db=new DbHandler();           
            // db connection establishment
            db.openConnection();                   
            
            // statement and query
            Statement artist = DbHandler.con.createStatement();
            Statement arts = DbHandler.con.createStatement();
            Statement details = DbHandler.con.createStatement();
            
             ///////////
         
         
             String username=(String) request.getSession(false).getAttribute("uname");

        
         
         //////////
            
            // resultset and query execution
           ResultSet rtist = artist.executeQuery("Select name,profile_img from artist order by RAND() Limit 4");

            ResultSet rart = arts.executeQuery("Select name,description,price,artist,image from arts where status='For Sale' order by no");
           
            
            ResultSet det = details.executeQuery("Select name,profile_img from buyer where username='"+username+"'");
          
            ///////////
         
         String name=null;
         String des=null;
         String pic=null;
         
          
         
         //////////
              //clear the array list 
        artistName.clear();
        artistPic.clear();
          ///////////
         
         artName.clear();
      artPrice.clear();
      artArtist.clear();
     artDes.clear();
     artPic.clear();
    
        
     
     totalArts=0;
         //////////
        
            //////////   
         while(det.next())
       {
       
           name=det.getString("name");
          
           pic=det.getString("profile_img");
          
       
          
       
        } 
      /////////
         
         
         
         
         
         
         //////////   
         while(rtist.next())
       {
       
           String v1=rtist.getString("name");
           artistName.add(v1);
       
           String v2=rtist.getString("profile_img");
       artistPic.add(v2);
      
       
        } 
      /////////
       
        
       
       //////////
       
 
       while(rart.next())
       {
       
           String v1=rart.getString("name");
           artName.add(v1);
       
           String v2=rart.getString("description");
       artDes.add(v2);
       String v3=rart.getString("price");
       artPrice.add(v3);
       String v4=rart.getString("artist");
       artArtist.add(v4);
       String v5=rart.getString("image");
       artPic.add(v5);
       
       totalArts++;
       
        } 
      /////////
       
       
     
       
       
   // changing arraylists to java arrays 
   
         int variable81= artistName.size();
   aName= new String[variable81];
   aName= artistName.toArray(aName);
   
   
   String a1= aName[0];
  
   String a2= aName[1];
   String a3= aName[2];
   String a4= aName[3];
   
   
   
   
   
   
     int variable89= artistPic.size();
   aPic= new String[variable89];
   aPic= artistPic.toArray(aPic);
   
     String ap1= aPic[0];
     String ap2= aPic[1];
     String ap3= aPic[2];
     String ap4= aPic[3];
  ///////////////////////////////////////////////////////////////
   
    int variable29= artName.size();
   artsName= new String[variable29];
   artsName= artName.toArray(artsName);
   
   
   
    int variable39= artPrice.size();
   artsPrice= new String[variable39];
   artsPrice= artPrice.toArray(artsPrice);
 
   
   
    int variable49= artArtist.size();
   artsArtist= new String[variable49];
   artsArtist= artArtist.toArray(artsArtist);
   
    int variable19= artDes.size();
   artsDes= new String[variable19];
   artsDes= artDes.toArray(artsDes);
   
    int variable79= artPic.size();
   artsPic= new String[variable79];
   artsPic= artPic.toArray(artsPic);
   
  
   
   
   
   
   
   
    
   // changing arrays to javascripy arrays 
    String artistname= toJavascriptArray(aName);
    String artistpic= toJavascriptArray(aPic);
    
    
    
    
    
    ///////////////////////////////////////////////
    String artname= toJavascriptArray(artsName);
    String artdes= toJavascriptArray(artsDes);
    String artprice= toJavascriptArray(artsPrice);
    String artpic= toJavascriptArray(artsPic);
    String artartist= toJavascriptArray(artsArtist);
   
  
   
       request.getSession().setAttribute("artistname",artistname);
       request.getSession().setAttribute("artistpic",artistpic);
       
       /////////////////////////////////////////////
       request.getSession().setAttribute("a1",a1);
       request.getSession().setAttribute("a2",a2);
       request.getSession().setAttribute("a3",a3);
       request.getSession().setAttribute("a4",a4);
       
       
       request.getSession().setAttribute("ap1",ap1);
       request.getSession().setAttribute("ap2",ap2);
       request.getSession().setAttribute("ap3",ap3);
       request.getSession().setAttribute("ap4",ap4);
      
       
       
       
       ///////////////////////////////////////////////////
       
       request.getSession().setAttribute("name",name);
       request.getSession().setAttribute("pic",pic);
      
       
       
       ////////////////////////////////////////////////////////////////////////
       request.getSession().setAttribute("artname",artname);
       request.getSession().setAttribute("artdes",artdes);
       request.getSession().setAttribute("artprice",artprice);
       request.getSession().setAttribute("artpic",artpic);
       request.getSession().setAttribute("artartist",artartist);
       request.getSession().setAttribute("totalarts",totalArts);
       
   
   
       
       request.getRequestDispatcher("buyer.jsp").forward(request, response);
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
                 Logger.getLogger(buyerDashboard.class.getName()).log(Level.SEVERE, null, ex);
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
                 Logger.getLogger(buyerDashboard.class.getName()).log(Level.SEVERE, null, ex);
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
