

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.PipelineCorrosion;

import Model.ComboModel;
import Model.PipelineCorrosion.MAOPModel;
import java.util.HashMap;
import java.util.Map;
import java.util.Vector;
import javax.servlet.http.HttpServletRequest;
import org.json.JSONObject;

/**
 *
 * @author kata__000
 */
public class MAOPController extends Controller.Controller{
    
    private final MAOPModel model = new MAOPModel();

    public MAOPModel getModel() {
        return model;
    }
    
    public  Map<String, String> getValues(HttpServletRequest request) throws Exception{
        
         //Input Data
        String description_ma = request.getParameter("description_ma");
        String linepipe_ma =  request.getParameter("linepipe_ma");
        String nomps_sel_ma = request.getParameter("nomps_sel_ma");
        String nomps_ma = request.getParameter("nomps_ma");
        String wallt_sel_ma = request.getParameter("wallt_sel_ma");
        String wallt_ma = request.getParameter("wallt_ma");
        String td_sel_ma = request.getParameter("td_sel_ma");
        String tempu_ma = request.getParameter("tempu_ma");
        String grade_sel_ma = request.getParameter("grade_sel_ma");
        String grade_ma = request.getParameter("grade_ma");
        String df_sel_ma = request.getParameter("df_sel_ma");
        String df_ma = request.getParameter("df_ma");
        String jf_sel_ma = request.getParameter("jf_sel_ma");
        String jf_ma = request.getParameter("jf_ma");
        String maximund_ma = request.getParameter("maximund_ma");
        String longitudinale_ma = request.getParameter("longitudinale_ma");
        String mop_ma = request.getParameter("mop_ma");
        String pipeo_sel_ma = request.getParameter("pipeo_sel_ma");
        String np_sel_ma = request.getParameter("np_sel_ma");
        String md_sel_ma = request.getParameter("md_sel_ma");
        String le_sel_ma = request.getParameter("le_sel_ma");
        String mop_sel_ma = request.getParameter("mop_sel_ma");
        String maximuns_ma = request.getParameter("maximuns_ma");
        String designp_ma = request.getParameter("designp_ma");
        String intermediatef_ma = request.getParameter("intermediatef_ma");        
        //ids
        String id_proyect = request.getParameter("idproyect");
        String iduser = request.getParameter("iduser");
       
        Map<String, String> values = new HashMap<String, String>();
                
        try
        {
            values.put("description_ma", stringToBD(description_ma.trim()));
            values.put("linepipe_ma",  stringToBD(linepipe_ma.trim()));
            values.put("nomps_sel_ma",  stringToBD(nomps_sel_ma.trim()));
            values.put("nomps_ma",  stringToBD(nomps_ma.trim()));
            values.put("wallt_sel_ma",  stringToBD(wallt_sel_ma.trim()));
            values.put("wallt_ma",  stringToBD(wallt_ma.trim()));
            values.put("td_sel_ma",  stringToBD(td_sel_ma.trim()));
            values.put("tempu_ma",  stringToBD(tempu_ma.trim()));
            values.put("grade_sel_ma",  stringToBD(grade_sel_ma.trim()));
            values.put("grade_ma",  stringToBD(grade_ma.trim()));
            values.put("df_sel_ma",  stringToBD(df_sel_ma.trim()));
            values.put("df_ma",  stringToBD(df_ma.trim()));
            values.put("jf_sel_ma",  stringToBD(jf_sel_ma.trim()));
            values.put("jf_ma",  stringToBD(jf_ma.trim()));
            values.put("longitudinale_ma",  stringToBD(longitudinale_ma.trim()));
            values.put("maximund_ma",  stringToBD(maximund_ma.trim()));
            values.put("mop_ma",  stringToBD(mop_ma.trim()));
            values.put("pipeo_sel_ma",  stringToBD(pipeo_sel_ma.trim()));
            values.put("np_sel_ma",  stringToBD(np_sel_ma.trim()));
            values.put("md_sel_ma",  stringToBD(md_sel_ma.trim()));
            values.put("le_sel_ma",  stringToBD(le_sel_ma.trim()));
            values.put("mop_sel_ma",  stringToBD(mop_sel_ma.trim()));
            values.put("maximuns_ma",  stringToBD(maximuns_ma.trim()));
            values.put("designp_ma",  stringToBD(designp_ma.trim()));
            values.put("intermediatef_ma",  stringToBD(intermediatef_ma.trim()));
            
            values.put("id_proyect", id_proyect.trim());
            values.put("id_user", iduser.trim());
            
        }catch(Exception ex){
            throw new Exception(ex.getMessage());
        }
       
       return values;
        
    }
      
      
       
}

