/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Selector;

import Model.Selector.PlatinaModel;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.json.JSONObject;


/**
 *
 * @author kata__000
 */
public class PlatinaController extends Controller.Controller{
    
    private static final  PlatinaModel model = new PlatinaModel();

    public PlatinaModel getModel() {
        return model;
    }
    
    
    
    public  Map<String, String> getValues(HttpServletRequest request) throws Exception{
          //Input Data
        String description_pla = request.getParameter("description_pla");
        String type_sel_pla = request.getParameter("type_sel_pla");
        String nps_sel_pla = request.getParameter("nps_sel_pla");
        String flujo1_pla = request.getParameter("flujo1_pla");
        String flujo2_pla = request.getParameter("flujo2_pla");
        String flujo3_pla = request.getParameter("flujo3_pla");
       
        
        //Results
        String espesor_pla = request.getParameter("espesor_pla");
        String orifice_pla = request.getParameter("orifice_pla");
        String orifice8_pla = request.getParameter("orifice8_pla");
        String dbc_pla = request.getParameter("dbc_pla");
        String db_pla = request.getParameter("db_pla");
        String dext_pla = request.getParameter("dext_pla");
        String d_pla = request.getParameter("d_pla");
        String l_pla = request.getParameter("l_pla");
        
        //ids
        String id_proyect = request.getParameter("idproyect");
        String iduser = request.getParameter("iduser");
       
        Map<String, String> values = new HashMap<String, String>();
                
        try
        {
            values.put("type_sel_pla", stringToBD(type_sel_pla.trim()));
            values.put("description_pla", stringToBD(description_pla.trim()));
            values.put("nps_sel_pla", stringToBD(nps_sel_pla.trim()));
            values.put("flujo1_pla",  stringToBD(flujo1_pla.trim()));
            values.put("flujo2_pla",  stringToBD(flujo2_pla.trim()));
            values.put("flujo3_pla",  stringToBD(flujo3_pla.trim()));
            values.put("l_pla",  stringToBD(l_pla.trim()));
            values.put("espesor_pla",  stringToBD(espesor_pla.trim()));
            values.put("orifice_pla",  stringToBD(orifice_pla.trim()));
            values.put("orifice8_pla",  stringToBD(orifice8_pla.trim()));
            values.put("dbc_pla",  stringToBD(dbc_pla.trim()));
            values.put("db_pla",  stringToBD(db_pla.trim()));
            values.put("dext_pla",  stringToBD(dext_pla.trim()));
            values.put("d_pla",  stringToBD(d_pla.trim()));
            
            values.put("id_proyect", id_proyect.trim());
            values.put("id_user", iduser.trim());
            
        }catch(Exception ex){
            throw new Exception(ex.getMessage());
        }
       
       return values;
        
    }
    
    public static JSONObject getPlatina(String tipo, String nps) throws Exception{
        return model.getPlatina(tipo, nps);
    }
   
    
}
