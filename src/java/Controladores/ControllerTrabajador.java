/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controladores;

import Modelos.HibernateUtil;
import Modelos.Parqueadero;
import Modelos.Trabajador;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.Query;
import org.hibernate.Session;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

/**
 *
 * @author usuario
 */
public class ControllerTrabajador extends HttpServlet {

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
         String url = request.getRequestURI();
        String [] params = url.split("/"); 
        
        if (params.length>=3) {
            
            switch (params[3]){
            
                case "create" : 
                    registrarTrabajador(request,response);
                    break;
                
                  case "getJson":
                     getJson(request,response);
                     break;
                                   
            
            
            
            }
            
        }else {   
            
        }      

    }
 private void registrarTrabajador(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        PrintWriter out = response.getWriter();
        
      
      
       
          String nom = request.getParameter("nombres");
          String ape =request.getParameter("apellidos");
          String td = request.getParameter("tdocumento");
          String doc =request.getParameter("documento");
          String cof =request.getParameter("conficontrasena");
          String cor =request.getParameter("email");
          String es = request.getParameter("estado");
          Parqueadero pq = new Parqueadero();
          pq.setIdParqueadero(1);
           
        Trabajador tr = new Trabajador(pq,nom,ape,td,doc,cof,cor,es);
       
      
        
        
        Session s = HibernateUtil.getSessionFactory().openSession();
        
        s.beginTransaction();       
        s.save(tr);
        s.getTransaction().commit();     
        s.close(); 
      
    
     
     }

 private void getJson(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        PrintWriter out = response.getWriter();
        Session s = HibernateUtil.getSessionFactory().openSession();
        Query q = s.createQuery("From Trabajador");
        
        List<Trabajador> tr = q.list();
        
        JSONArray listaJson = new JSONArray();
        
        for (int i = 0; i < tr.size(); i++) {
            
            JSONObject obj = new JSONObject();
            
            obj.put("nombres", tr.get(i).getNombres());
            obj.put("apellidos", tr.get(i).getApellidos());
            obj.put("tdocumento", tr.get(i).getTipoDocumento());
            obj.put("documento", tr.get(i).getDoumento());
            obj.put("email", tr.get(i).getCorreo());
            obj.put("estado", tr.get(i).getEstado());
          
            
            
            listaJson.add(obj);
            
          
      }
        
        out.println(listaJson);
     
     
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
        processRequest(request, response);
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
