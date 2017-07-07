/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controladores;

import Modelos.Cliente;
import Modelos.HibernateUtil;
import Modelos.Mensualidad;
import Modelos.Parqueadero;
import Modelos.Puesto;
import Modelos.Trabajador;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
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
public class ControllerMensualidad extends HttpServlet {

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
                    registrarMensualidad(request,response);
                    break;
                    
                case "listar": 
                    listarMensualidad(request, response);
                    break; 
                                   
            
            
            
            }
            
        }else {   
            
        }      
        
        
        
        
    }
    private void registrarMensualidad(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        PrintWriter out = response.getWriter();
        
      
      
       
          String fe =  request.getParameter("fe");
          String fs =request.getParameter("fs");
          String e = request.getParameter("Estado");
          
          Cliente cl = new Cliente();
          cl.setIdCliente(1);
          Puesto p = new Puesto();
          p.setIdPuesto(1);
          
        Mensualidad  m = new Mensualidad(cl,p,fe,fs,e);
          
        
       
      
        
        
        Session s = HibernateUtil.getSessionFactory().openSession();
        
        s.beginTransaction();       
        s.save(m);
        s.getTransaction().commit();     
        s.close(); 
      
     
     
     }
private void listarMensualidad(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
 PrintWriter out = response.getWriter();
    Session s = HibernateUtil.getSessionFactory().openSession();
    
    Query q = s.createQuery("From Mensualidad");
    List<Mensualidad> ms = q.list();
    
    
    JSONArray json = new JSONArray();
    
    for (int i = 0; i < ms.size(); i++) {
        
        JSONObject obj = new JSONObject();
        
        obj.put("fe", ms.get(i).getFechaEntrada());
        obj.put("fs", ms.get(i).getFechaSalida());
        obj.put("cl", ms.get(i).getCliente().getNombres());
        obj.put("pu", ms.get(i).getPuesto().getParqueadero());
        obj.put("es", ms.get(i).getEstado()); 
        
        json.add(obj);
        
        
        
        
    }
         out.println(json);


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
