

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Pipeline;

import Model.Pipeline.RegulatorStationModel;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author kata__000
 */
public class RegulatorStationController extends Controller.Controller{
    
    private final RegulatorStationModel model = new RegulatorStationModel();

    public RegulatorStationModel getModel() {
        return model;
    }
    
    
    
    public  Map<String, String> getValues(HttpServletRequest request) throws Exception{
        
         //Input Data
        String description_rs = request.getParameter("description_rs");
        
        String df_rs =  request.getParameter("df_rs");
        String gs_rs = request.getParameter("gs_rs");
        String p1_rs = request.getParameter("p1_rs");
        String p2_rs = request.getParameter("p2_rs");
        String flowrate_rs = request.getParameter("flowrate_rs");
        String flowingg_rs = request.getParameter("flowingg_rs");
        String c1_rs = request.getParameter("c1_rs");
        String capacityr_rs = request.getParameter("capacityr_rs");
        String df_sel_rs = request.getParameter("df_sel_rs");
        String temp_sel_rs = request.getParameter("temp_sel_rs");
        String gs_sel_rs = request.getParameter("gs_sel_rs");
        String p1_sel_rs = request.getParameter("p1_sel_rs");
        String p2_sel_rs = request.getParameter("p2_sel_rs");
        String fr_sel_rs = request.getParameter("fr_sel_rs");
        String fg_sel_rs = request.getParameter("fg_sel_rs");
        
        String linepipe_rs = request.getParameter("linepipe_rs");
        String grade_sel_rs = request.getParameter("grade_sel_rs");
        String jf_sel_rs = request.getParameter("jf_sel_rs");
        String p1opu_rs = request.getParameter("p1opu_rs");
        String flowrateu_rs = request.getParameter("flowrateu_rs");
        String ag_rs = request.getParameter("ag_rs");      
        String tempu_rs = request.getParameter("tempu_rs");
        String smys_rs = request.getParameter("smys_rs");
        String jfu_rs = request.getParameter("jfu_rs");
        String p1opu_sel_rs = request.getParameter("p1opu_sel_rs");        
        String fru_sel_rs = request.getParameter("fru_sel_rs");      
        String agu_sel_rs= request.getParameter("agu_sel_rs");          
        String linepiped_rs = request.getParameter("linepiped_rs");
        String graded_sel_rs = request.getParameter("graded_sel_rs");
        String jfd_sel_rs = request.getParameter("jfd_sel_rs");
        String p2op_rs = request.getParameter("p2op_rs");
        String flowrated_rs = request.getParameter("flowrated_rs");
        String agd_rs = request.getParameter("agd_rs");
        String smysd_rs = request.getParameter("smysd_rs");
        String jfdp_rs = request.getParameter("jfdp_rs");
        String p2op_sel_rs = request.getParameter("p2op_sel_rs");
        String frd_sel_rs = request.getParameter("frd_sel_rs");
        String agud_sel_rs = request.getParameter("agud_sel_rs");
        
        String gassizingc_rs = request.getParameter("gassizingc_rs");
        String gassizingr_rs = request.getParameter("gassizingr_rs");
        String flowc_rs = request.getParameter("flowc_rs");
        String calculatedi_rs = request.getParameter("calculatedi_rs");                    
        String minimunr_rs = request.getParameter("minimunr_rs");
        String calculatedo_rs = request.getParameter("calculatedo_rs");
        String calculatedid_rs = request.getParameter("calculatedid_rs");
        String minimunrd_rs = request.getParameter("minimunrd_rs");
        String calculatedod_rs = request.getParameter("calculatedod_rs");
        
        //ids
        String id_proyect = request.getParameter("idproyect");
        String iduser = request.getParameter("iduser");
       
        Map<String, String> values = new HashMap<String, String>();
                
        try
        {
            values.put("description_rs", stringToBD(description_rs.trim()));            
            values.put("df_rs",  stringToBD(df_rs.trim()));            
            values.put("gs_rs",  stringToBD(gs_rs.trim()));            
            values.put("p1_rs",  stringToBD(p1_rs.trim()));
            values.put("p2_rs",  stringToBD(p2_rs.trim()));
            values.put("flowrate_rs",  stringToBD(flowrate_rs.trim()));
            values.put("flowingg_rs",  stringToBD(flowingg_rs.trim()));
            values.put("c1_rs",  stringToBD(c1_rs.trim()));
            values.put("capacityr_rs",  stringToBD(capacityr_rs.trim()));
            values.put("df_sel_rs",  stringToBD(df_sel_rs.trim()));
            values.put("df_rs",  stringToBD(df_rs.trim()));
            values.put("temp_sel_rs",  stringToBD(temp_sel_rs.trim()));
            values.put("gs_sel_rs",  stringToBD(gs_sel_rs.trim()));
            values.put("p2_sel_rs",  stringToBD(p2_sel_rs.trim()));
            values.put("p1_sel_rs",  stringToBD(p1_sel_rs.trim()));
            values.put("fr_sel_rs",  stringToBD(fr_sel_rs.trim()));
            values.put("fg_sel_rs",  stringToBD(fg_sel_rs.trim()));
            values.put("linepipe_rs",  stringToBD(linepipe_rs.trim()));
            values.put("jf_sel_rs",  stringToBD(jf_sel_rs.trim()));
            values.put("grade_sel_rs",  stringToBD(grade_sel_rs.trim()));
            values.put("p1opu_rs",  stringToBD(p1opu_rs.trim()));
            values.put("flowrateu_rs",  stringToBD(flowrateu_rs.trim()));
            values.put("ag_rs",  stringToBD(ag_rs.trim()));
            values.put("tempu_rs",  stringToBD(tempu_rs.trim()));
            values.put("smys_rs",  stringToBD(smys_rs.trim()));
            values.put("jfu_rs",  stringToBD(jfu_rs.trim()));
            values.put("p1opu_sel_rs",  stringToBD(p1opu_sel_rs.trim()));        
            values.put("fru_sel_rs",  stringToBD(fru_sel_rs.trim()));       
            values.put("agu_sel_rs", stringToBD(agu_sel_rs.trim()));    
            values.put("linepiped_rs",  stringToBD(linepiped_rs.trim()));
            values.put("graded_sel_rs",  stringToBD(graded_sel_rs.trim()));
            values.put("jfd_sel_rs",  stringToBD(jfd_sel_rs.trim()));
            values.put("p2op_rs",  stringToBD(p2op_rs.trim()));
            values.put("flowrated_rs",  stringToBD(flowrated_rs.trim()));
            values.put("agd_rs",  stringToBD(agd_rs.trim()));
            values.put("smysd_rs",  stringToBD(smysd_rs.trim()));
            values.put("jfdp_rs",  stringToBD(jfdp_rs.trim()));
            values.put("p2op_sel_rs",  stringToBD(p2op_sel_rs.trim()));
            values.put("frd_sel_rs",  stringToBD(frd_sel_rs.trim()));
            values.put("agud_sel_rs",  stringToBD(agud_sel_rs.trim()));

            values.put("gassizingc_rs",  stringToBD(gassizingc_rs.trim()));
            values.put("gassizingr_rs",  stringToBD(gassizingr_rs.trim()));
            values.put("flowc_rs",  stringToBD(flowc_rs.trim()));
            values.put("calculatedi_rs",  stringToBD(calculatedi_rs.trim()));                    
            values.put("minimunr_rs",  stringToBD(minimunr_rs.trim()));
            values.put("calculatedo_rs",  stringToBD(calculatedo_rs.trim()));
            values.put("calculatedid_rs",  stringToBD(calculatedid_rs.trim()));
            values.put("minimunrd_rs",  stringToBD(minimunrd_rs.trim()));
            values.put("calculatedod_rs",  stringToBD(calculatedod_rs.trim()));
            
            values.put("id_proyect", id_proyect.trim());
            values.put("id_user", iduser.trim());
            
        }catch(Exception ex){
            throw new Exception(ex.getMessage());
        }
       
       return values;
        
    }
      
      
       
}

