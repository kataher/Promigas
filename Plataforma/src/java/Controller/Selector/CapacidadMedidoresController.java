/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Selector;

import Model.ComboModel;
import Model.Selector.CapacidadMedidoresModel;
import java.util.HashMap;
import java.util.Map;
import java.util.Vector;
import javax.servlet.http.HttpServletRequest;
import org.json.JSONObject;
/**
 *
 * @author kata__000
 */
public class CapacidadMedidoresController extends Controller.Controller  {
    
    private final CapacidadMedidoresModel model = new CapacidadMedidoresModel();

    public CapacidadMedidoresModel getModel() {
        return model;
    }
    
    
    
    public  Map<String, String> getValues(HttpServletRequest request) throws Exception{
        
        
        String type = request.getParameter("type");
        String from = getFrom(type);
        
         //Input Data
        String description = request.getParameter("description" + from);
        String ma_sel = request.getParameter("ma_sel"+ from);
        String se_sel = request.getParameter("se_sel" + from);
        String mo_sel = request.getParameter("mo_sel" + from);
        String preisonba = request.getParameter("preisonba" + from);
        String presionop = request.getParameter("presionop" + from);
        String flujomin = request.getParameter("flujomin" + from);
        String flujomax = request.getParameter("flujomax" + from);
        String po_sel = request.getParameter("po_sel" + from);
        String pb_sel = request.getParameter("pb_sel" + from);
        String fmin_sel = request.getParameter("fmin_sel" + from);
        String fmax_sel = request.getParameter("fmax_sel" + from);
        String capaopt = request.getParameter("capaopt" + from);
        
         //Results
       
        String modeloop = request.getParameter("modeloop" + from);
        String trabajoop = request.getParameter("trabajoop" + from);
        String maxcapaop = request.getParameter("maxcapaop" + from);
        String modeloev = request.getParameter("modeloev" + from);
        String trabajoev = request.getParameter("trabajoev" + from);
        String maxcapaev = request.getParameter("maxcapaev" + from);
        String trabajocam = request.getParameter("trabajocam" + from);
        
        //ids
        String id_proyect = request.getParameter("idproyect");
        String iduser = request.getParameter("iduser");
       
        Map<String, String> values = new HashMap<String, String>();
                
        try
        {
            values.put("description_med", stringToBD(description.trim()));
            values.put("se_sel_med", stringToBD(se_sel.trim()));
            values.put("mo_sel_med",  stringToBD(mo_sel.trim()));
            values.put("preisonba_med",  stringToBD(preisonba.trim()));
            values.put("presionop_med",  stringToBD(presionop.trim()));
            values.put("flujomin_med",  stringToBD(flujomin.trim()));
            values.put("flujomax_med",  stringToBD(flujomax.trim()));
            values.put("po_sel_med",  stringToBD(po_sel.trim()));
            values.put("pb_sel_med",  stringToBD(pb_sel.trim()));
            values.put("fmin_sel_med",  stringToBD(fmin_sel.trim()));
            values.put("fmax_sel_med",  stringToBD(fmax_sel.trim()));
            values.put("modeloop_med",  stringToBD(modeloop.trim()));
            values.put("trabajoop_med",  stringToBD(trabajoop.trim()));
            values.put("modeloev_med",  stringToBD(modeloev.trim()));
            values.put("trabajoev_med",  stringToBD(trabajoev.trim()));
            values.put("maxcapaop_med",  stringToBD(maxcapaop.trim()));
            values.put("ma_sel_med",  stringToBD(ma_sel.trim()));
            values.put("capaopt_med",  stringToBD(capaopt.trim()));
            
            values.put("maxcapaev_med",  stringToBD(maxcapaev.trim()));
            values.put("trabajocam_med",  stringToBD(trabajocam.trim()));
            
            values.put("type",  stringToBD(type.trim()));
            values.put("id_proyect", id_proyect.trim());
            values.put("id_user", iduser.trim());
            
        }catch(Exception ex){
            throw new Exception(ex.getMessage());
        }
       
       return values;
        
    }
    
    private String getFrom(String type){
        String from = "_mer";
        
        switch (type){
            case "rotatorio":
                from = "_mer";
                break;
            case "masico":
                from = "_mem";
                break;
            case "ultrasonico":
                from = "_meu";
                break;
            case "turbina":
                from = "_met";
                break;
        }
        
        return from;
    }
      
       
}


