/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Selector;

import Model.ComboModel;
import Model.Selector.ValvulasModel;
import java.util.HashMap;
import java.util.Map;
import java.util.Vector;
import javax.servlet.http.HttpServletRequest;
import org.json.JSONObject;
/**
 *
 * @author kata__000
 */
public class ValvulasController extends Controller.Controller  {
    
    private static final ValvulasModel model = new ValvulasModel();

    public ValvulasModel getModel() {
        return model;
    }
    
    
    
    public  Map<String, String> getValues(HttpServletRequest request) throws Exception{
        String ma_sel_val = request.getParameter("ma_sel_val");
        String mod_sel_val = request.getParameter("mod_sel_val");

        String dim_sel_val = request.getParameter("dim_sel_val");
        String presiondis_val = request.getParameter("presiondis_val");
        String spd_sel_val = request.getParameter("spd_sel_val");
        String nivelsobmin_val = request.getParameter("nivelsobmin_val");
        String nsmin_sel_val = request.getParameter("nsmin_sel_val");
        String nivelsobmax_val = request.getParameter("nivelsobmax_val");
        String nsmax_sel_val = request.getParameter("nsmax_sel_val");
        String presionb_val = request.getParameter("presionb_val");
        String pb_sel_val = request.getParameter("pb_sel_val");
        String flujomax_val = request.getParameter("flujomax_val");
        String flujomax_sel_val = request.getParameter("flujomax_sel_val");
        String tempope_val = request.getParameter("tempope_val");
        String tempope_sel_val = request.getParameter("tempope_sel_val");
        String pesom_val = request.getParameter("pesom_val");
        String pesom_sel_val = request.getParameter("pesom_sel_val");
        String relak_val = request.getParameter("relak_val");
        String coefdes_val = request.getParameter("coefdes_val");
        String factcor_val = request.getParameter("factcor_val");
        String factcomp_val = request.getParameter("factcomp_val");
        String modeloop_val = request.getParameter("modeloop_val");
        String trabajoop_val = request.getParameter("trabajoop_val");

        String maxcapaop_val = request.getParameter("maxcapaop_val");
        String modeloev_val = request.getParameter("modeloev_val");
        String cval_val = request.getParameter("cval_val");
        String orificiorecom_val = request.getParameter("orificiorecom_val");
        String arearecom_val = request.getParameter("arearecom_val");
        String flujorecom_val = request.getParameter("flujorecom_val");
        String op1g_val = request.getParameter("op1g_val");
        String op2g_val = request.getParameter("op2g_val");
        
        
        //ids
        String id_proyect = request.getParameter("idproyect");
        String iduser = request.getParameter("iduser");
        String description_val = request.getParameter("description_val");
       
        Map<String, String> values = new HashMap<String, String>();
                
        try
        {
            values.put("ma_sel_val", stringToBD(ma_sel_val.trim().trim()));
            values.put("mod_sel_val", stringToBD(mod_sel_val.trim()));
            values.put("dim_sel_val", stringToBD(dim_sel_val.trim()));

            values.put("spd_sel_val", stringToBD(spd_sel_val.trim()));
            values.put("nivelsobmin_val", stringToBD(nivelsobmin_val.trim()));
            values.put("nsmin_sel_val", stringToBD(nsmin_sel_val.trim()));
            values.put("nsmax_sel_val", stringToBD(nsmax_sel_val.trim()));
            values.put("nivelsobmax_val", stringToBD(nivelsobmax_val.trim()));
            values.put("presionb_val", stringToBD(presionb_val.trim()));
            values.put("pb_sel_val", stringToBD(pb_sel_val.trim()));
            values.put("flujomax_val", stringToBD(flujomax_val.trim()));
            values.put("flujomax_sel_val", stringToBD(flujomax_sel_val.trim()));
            values.put("tempope_val", stringToBD(tempope_val.trim()));
            values.put("tempope_sel_val", stringToBD(tempope_sel_val.trim()));
            values.put("pesom_val", stringToBD(pesom_val.trim()));
            values.put("pesom_sel_val", stringToBD(pesom_sel_val.trim()));
            values.put("relak_val", stringToBD(relak_val.trim()));
            values.put("coefdes_val", stringToBD(coefdes_val.trim()));
            values.put("modeloop_val", stringToBD(modeloop_val.trim()));
            values.put("trabajoop_val", stringToBD(trabajoop_val.trim()));
            values.put("maxcapaop_val", stringToBD(maxcapaop_val.trim()));
            values.put("modeloev_val", stringToBD(modeloev_val.trim()));
            values.put("cval_val", stringToBD(cval_val.trim()));
            values.put("orificiorecom_val", stringToBD(orificiorecom_val.trim()));
            
            values.put("presiondis_val", stringToBD(presiondis_val.trim()));
            values.put("factcor_val", stringToBD(factcor_val.trim()));
            values.put("factcomp_val", stringToBD(factcomp_val.trim()));

            values.put("arearecom_val", stringToBD(arearecom_val.trim()));
            values.put("flujorecom_val", stringToBD(flujorecom_val.trim()));
            values.put("op1g_val", stringToBD(op1g_val.trim()));
            values.put("op2g_val", stringToBD(op2g_val.trim()));
            
            values.put("id_proyect", id_proyect.trim());
            values.put("id_user", iduser.trim());
            values.put("description_val",  stringToBD(description_val.trim()));
            
        }catch(Exception ex){
            throw new Exception(ex.getMessage());
        }
       
       return values;
        
    }
    
    public static JSONObject getOrificioValvulas(String dim) throws Exception{
        return model.getOrificioValvulas(dim);
    }
    
    public static JSONObject getValorOrificioValvulas(String orificio, String type) throws Exception{
        return model.getValorOrificioValvulas( stringToBD(orificio), stringToBD(type));
    }
      
       
}


