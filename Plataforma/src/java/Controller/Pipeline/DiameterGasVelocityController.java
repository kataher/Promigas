/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Pipeline;

import Model.ComboModel;
import Model.Pipeline.DiameterGasVelocityModel;
import java.util.HashMap;
import java.util.Map;
import java.util.Vector;
import javax.servlet.http.HttpServletRequest;
import org.json.JSONObject;
/**
 *
 * @author kata__000
 */
public class DiameterGasVelocityController extends Model.Model {
    
    private final DiameterGasVelocityModel model = new DiameterGasVelocityModel();

    public DiameterGasVelocityModel getModel() {
        return model;
    }
    
    public  Map<String, String> getValues(HttpServletRequest request) throws Exception{
        
         //Input Data
        String description_dgv = request.getParameter("description_dgv");
        String enteree_dgv = request.getParameter("enteree_dgv");
        String al_sel_dgv = request.getParameter("al_sel_dgv");
        String basetemperature_dgv = request.getParameter("basetemperature_dgv");
        String bt_sel_dgv = request.getParameter("bt_sel_dgv");
        String basepressure_dgv = request.getParameter("basepressure_dgv");
        String bp_sel_dgv = request.getParameter("bp_sel_dgv");
        String flowingp_dgv = request.getParameter("flowingp_dgv");
        String fp_sel_dgv = request.getParameter("fp_sel_dgv");
        String flowingt_dgv = request.getParameter("flowingt_dgv");
        String ft_sel_dgv = request.getParameter("ft_sel_dgv");
        String pipeinternald_dgv = request.getParameter("pipeinternald_dgv");
        String pid_sel_dgv = request.getParameter("pid_sel_dgv");
        String flowr_dgv = request.getParameter("flowr_dgv");
        String fr_sel_dgv = request.getParameter("fr_sel_dgv");
        String gs_sel_dgv = request.getParameter("gs_sel_dgv");
        String gst_dgv = request.getParameter("gst_dgv");
        String tipo_sel_dgv = request.getParameter("tipo_sel_dgv");
        
         //Results
        String gasv_dgv = request.getParameter("gasv_dgv");
        String z_dgv = request.getParameter("z_dgv");
        
        //ids
        String id_proyect = request.getParameter("idproyect");
        String iduser = request.getParameter("iduser");
        
        Map<String, String> values = new HashMap<String, String>();
            
        try
        {
            values.put("description_dgv", stringToBD(description_dgv.trim()));
            values.put("enteree_dgv", stringToBD(enteree_dgv.trim()));
            values.put("al_sel_dgv", stringToBD(al_sel_dgv.trim()));
            values.put("basetemperature_dgv",  stringToBD(basetemperature_dgv.trim()));
            values.put("bt_sel_dgv",  stringToBD(bt_sel_dgv.trim()));
            values.put("basepressure_dgv",  stringToBD(basepressure_dgv.trim()));
            values.put("bp_sel_dgv",  stringToBD(bp_sel_dgv.trim()));
            values.put("flowingp_dgv",  stringToBD(flowingp_dgv.trim()));
            values.put("fp_sel_dgv",  stringToBD(fp_sel_dgv.trim()));
            values.put("flowingt_dgv",  stringToBD(flowingt_dgv.trim()));
            values.put("ft_sel_dgv",  stringToBD(ft_sel_dgv.trim()));
            values.put("pipeinternald_dgv",  stringToBD(pipeinternald_dgv.trim()));
            values.put("pid_sel_dgv",  stringToBD(pid_sel_dgv.trim()));
            values.put("flowr_dgv",  stringToBD(flowr_dgv.trim()));
            values.put("fr_sel_dgv",  stringToBD(fr_sel_dgv.trim()));
            values.put("gs_sel_dgv",  stringToBD(gs_sel_dgv.trim()));
            values.put("gst_dgv",  stringToBD(gst_dgv.trim()));
            values.put("gasv_dgv",  stringToBD(gasv_dgv.trim()));
            values.put("z_dgv",  stringToBD(z_dgv.trim()));
            values.put("tipo_sel_dgv",  stringToBD(tipo_sel_dgv.trim()));
            
            values.put("id_proyect", id_proyect.trim());
            values.put("id_user", iduser.trim());
            
        }catch(Exception ex){
            throw new Exception(ex.getMessage());
        }
        return values;
    }

}
