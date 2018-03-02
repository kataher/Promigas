/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Selector;

import Model.ComboModel;
import Model.GeneralModel;
import Model.Selector.ActuadoresModel;
import java.util.HashMap;
import java.util.Map;
import java.util.Vector;
import javax.servlet.http.HttpServletRequest;
import org.json.JSONObject;
/**
 *
 * @author kata__000
 */
public class ActuadoresController extends Controller.Controller  {
    
    private final ActuadoresModel model = new ActuadoresModel();

    public  Map<String, String> getValues(HttpServletRequest request) throws Exception{
        
         //Input Data
        String description_act = request.getParameter("description_act");
        String ma_sel_act = request.getParameter("ma_sel_act");
        String tam_sel_act = request.getParameter("tam_sel_act");
        String cla_sel_act = request.getParameter("cla_sel_act");
        String toes_sel_act = request.getParameter("toes_sel_act");
        String toma_sel_act = request.getParameter("toma_sel_act");
        String maact_sel_act = request.getParameter("maact_sel_act");
        String refe_sel_act = request.getParameter("refe_sel_act");
        String tiac_sel_act = request.getParameter("tiac_sel_act");
        String moac_sel_act = request.getParameter("moac_sel_act");
        String pre_sel_act = request.getParameter("pre_sel_act");
        String torquees_act = request.getParameter("torquees_act");
        String torquema_act = request.getParameter("torquema_act");
        
        //Results
        String modelore_act = request.getParameter("modelore_act");
        String trabajo_act = request.getParameter("trabajo_act");
        String maxpar_act = request.getParameter("maxpar_act");
        String maxparval_act = request.getParameter("maxparval_act");
        String pmin_act = request.getParameter("pmin_act");
        String tpmin_act = request.getParameter("tpmin_act");
        String ppmin_act = request.getParameter("ppmin_act");
        String pmax_act = request.getParameter("pmax_act");
        String tpmax_act = request.getParameter("tpmax_act");
        String ppmax_act = request.getParameter("ppmax_act");
        String vecmax_act = request.getParameter("vecmax_act");
        
        //ids
        String id_proyect = request.getParameter("idproyect");
        String iduser = request.getParameter("iduser");
       
        Map<String, String> values = new HashMap<String, String>();
                
        try
        {
            values.put("description_act", stringToBD(description_act.trim()));
            values.put("tam_sel_act", stringToBD(tam_sel_act.trim()));
            values.put("cla_sel_act",  stringToBD(cla_sel_act.trim()));
            values.put("toes_sel_act",  stringToBD(toes_sel_act.trim()));
            values.put("toma_sel_act",  stringToBD(toma_sel_act.trim()));
            values.put("modelore_act",  stringToBD(modelore_act.trim()));
            values.put("maact_sel_act",  stringToBD(maact_sel_act.trim()));
            values.put("refe_sel_act",  stringToBD(refe_sel_act.trim()));
            values.put("tiac_sel_act",  stringToBD(tiac_sel_act.trim()));
            values.put("moac_sel_act",  stringToBD(moac_sel_act.trim()));
            values.put("pre_sel_act",  stringToBD(pre_sel_act.trim()));
            values.put("torquees_act",  stringToBD(torquees_act.trim()));
            values.put("torquema_act",  stringToBD(torquema_act.trim()));
            values.put("trabajo_act",  stringToBD(trabajo_act.trim()));
            values.put("maxpar_act",  stringToBD(maxpar_act.trim()));
            values.put("maxparval_act",  stringToBD(maxparval_act.trim()));
            values.put("ma_sel_act",  stringToBD(ma_sel_act.trim()));
            values.put("pmin_act",  stringToBD(pmin_act.trim()));            
            values.put("tpmin_act",  stringToBD(tpmin_act.trim()));
            values.put("ppmin_act",  stringToBD(ppmin_act.trim()));
            values.put("pmax_act",  stringToBD(pmax_act.trim()));
            values.put("tpmax_act",  stringToBD(tpmax_act.trim()));
            values.put("ppmax_act",  stringToBD(ppmax_act.trim()));
            values.put("vecmax_act",  stringToBD(vecmax_act.trim()));
            
            values.put("id_proyect", id_proyect.trim());
            values.put("id_user", iduser.trim());
            
        }catch(Exception ex){
            throw new Exception(ex.getMessage());
        }
       
       return values;
        
    }
    
    public JSONObject getTorque_Act(HttpServletRequest request) throws Exception {
        
        String id_ansi = request.getParameter("id_ansi").trim();    
        String id_inches = request.getParameter("id_inches").trim();  
        return model.getTorque_Act(id_ansi, id_inches);
    }
    
    public JSONObject getAllTorque_Act(HttpServletRequest request) throws Exception {
        
        String id_actuador = request.getParameter("id_actuador").trim();  
        return model.getTorque_Act(id_actuador);
    }
    
    public JSONObject getMaximos_Act(HttpServletRequest request) throws Exception {
        
        String maximo = request.getParameter("max_requerido").trim();    
        String actuador = request.getParameter("id_actuador").trim();  
        return model.getMaximos_Act(maximo, actuador);
    }
    
    public static String addActuador(HttpServletRequest request) throws Exception {
        
        String nombre = stringToBD(request.getParameter("nombre_adact").trim());    
        String accion = request.getParameter("tiac_sel_adact").trim();    
        String referencia = request.getParameter("refe_sel_adact").trim();    
          
        return ActuadoresModel.addActuador(nombre, referencia, accion);
    }
    
    
    public ActuadoresModel getModel(){
        return model;
    }
     
}
