/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Selector;

import Model.ComboModel;
import Model.Selector.ComputadoresFlujoModel;
import java.util.HashMap;
import java.util.Map;
import java.util.Vector;
import javax.servlet.http.HttpServletRequest;
import org.json.JSONObject;
/**
 *
 * @author kata__000
 */
public class ComputadoresFlujoController extends Controller.Controller  {
    
    private final ComputadoresFlujoModel model = new ComputadoresFlujoModel();

    public ComputadoresFlujoModel getModel() {
        return model;
    }
    
    
    
    public  Map<String, String> getValues(HttpServletRequest request) throws Exception{
        String fabricante_sel_com = request.getParameter("fabricante_sel_com");
        String modelo_sel_com = request.getParameter("modelo_sel_com");

        String trans_sel_com = request.getParameter("trans_sel_com");
        String ubtrans_sel_com = request.getParameter("ubtrans_sel_com");
        String gbp_sel_com = request.getParameter("gbp_sel_com");
        String cha_sel_com = request.getParameter("cha_sel_com");
        String programa_com = request.getParameter("programa_com");
        String sa_sel_com = request.getParameter("sa_sel_com");
        String cap_sel_com = request.getParameter("cap_sel_com");
        String rtd_sel_com = request.getParameter("rtd_sel_com");
        String tp_sel_com = request.getParameter("tp_sel_com");
        String sav_sel_com = request.getParameter("sav_sel_com");
        String s3_sel_com = request.getParameter("s3_sel_com");
        String s4_sel_com = request.getParameter("s4_sel_com");
        String s5_sel_com = request.getParameter("s5_sel_com");
        String s6_sel_com = request.getParameter("s6_sel_com");
        String s7_sel_com = request.getParameter("s7_sel_com");
        String s8_sel_com = request.getParameter("s8_sel_com");
        String tde_sel_com = request.getParameter("tde_sel_com");
        String tr_sel_com = request.getParameter("tr_sel_com");
        String mr_sel_com = request.getParameter("mr_sel_com");
        String pr_sel_com = request.getParameter("pr_sel_com");
        String opr_sel_com = request.getParameter("opr_sel_com");

        String sie_sel_com = request.getParameter("sie_sel_com");
        String us_sel_com = request.getParameter("us_sel_com");
        String gpt_sel_com = request.getParameter("gpt_sel_com");
        String mh_sel_com = request.getParameter("mh_sel_com");
        String pet_com = request.getParameter("pet_com");
        String prog_sel_com = request.getParameter("prog_sel_com");
        String sag_sel_com = request.getParameter("sag_sel_com");
        String capg_sel_com = request.getParameter("capg_sel_com");
        String rtdg_sel_com = request.getParameter("rtdg_sel_com");
        String tpg_sel_com = request.getParameter("tpg_sel_com");
        String cio_sel_com = request.getParameter("cio_sel_com");
        String oppr_sel_com = request.getParameter("oppr_sel_com");
        String oprm_sel_com = request.getParameter("oprm_sel_com");

        String siegc_sel_com = request.getParameter("siegc_sel_com");
        String gbt_sel_com = request.getParameter("gbt_sel_com");
        String mhgc_sel_com = request.getParameter("mhgc_sel_com");
        String progc_com = request.getParameter("progc_com");
        String proga_com = request.getParameter("proga_com");
        String sagc_sel_com = request.getParameter("sagc_sel_com");
        String capgc_sel_com = request.getParameter("capgc_sel_com");
        String rtdgc_sel_com = request.getParameter("rtdgc_sel_com");
        String tpgc_sel_com = request.getParameter("tpgc_sel_com");
        String ciogc_sel_com = request.getParameter("ciogc_sel_com");
        String sp_sel_com = request.getParameter("sp_sel_com");
        String oprmgc_sel_com = request.getParameter("oprmgc_sel_com");
        String kit_sel_com = request.getParameter("kit_sel_com");
        String db_sel_com = request.getParameter("db_sel_com");
        String ir_sel_com = request.getParameter("ir_sel_com");
        String ec_sel_com = request.getParameter("ec_sel_com");

        String energia_com = request.getParameter("energia_com");
        String openergia_com = request.getParameter("openergia_com");
        String bat_com = request.getParameter("bat_com");
        String procesador_com = request.getParameter("procesador_com");
        String reloj_com = request.getParameter("reloj_com");
        String entra_com = request.getParameter("entra_com");
        String entrapul_com = request.getParameter("entrapul_com");
        String ensaldig_com = request.getParameter("ensaldig_com");
        String entraana_com = request.getParameter("entraana_com");
        String entratemp_com = request.getParameter("entratemp_com");
        String comuni_com = request.getParameter("comuni_com");
        String led_com = request.getParameter("led_com");
        String capaexp_com = request.getParameter("capaexp_com");
        String garantia_com = request.getParameter("garantia_com");
        String trans_com = request.getParameter("trans_com");
        String sentem_com = request.getParameter("sentem_com");

        String entener_com = request.getParameter("entener_com");
        String fuente_com = request.getParameter("fuente_com");
        String sumiana_com = request.getParameter("sumiana_com");
        String moniener_com = request.getParameter("moniener_com");
        String batreser_com = request.getParameter("batreser_com");
        String proce_com = request.getParameter("proce_com");
        String memoria_com = request.getParameter("memoria_com");
        String relojtr_com = request.getParameter("relojtr_com");
        String entrapuls_com = request.getParameter("entrapuls_com");
        String entrasaldig_com = request.getParameter("entrasaldig_com");
        String entraanal_com = request.getParameter("entraanal_com");
        String comunica_com = request.getParameter("comunica_com");
        String ledestado_com = request.getParameter("ledestado_com");
        String capaexpa_com = request.getParameter("capaexpa_com");
        String analogdig_com = request.getParameter("analogdig_com");
        String ieee_com = request.getParameter("ieee_com");
        
        //ids
        String id_proyect = request.getParameter("idproyect");
        String iduser = request.getParameter("iduser");
        String description_com = request.getParameter("description_com");
       
        Map<String, String> values = new HashMap<String, String>();
                
        try
        {
            values.put("fabricante_sel_com", stringToBD(fabricante_sel_com));
            values.put("modelo_sel_com", stringToBD(modelo_sel_com));

            values.put("trans_sel_com", stringToBD(trans_sel_com));
            values.put("ubtrans_sel_com", stringToBD(ubtrans_sel_com));
            values.put("gbp_sel_com", stringToBD(gbp_sel_com));
            values.put("cha_sel_com", stringToBD(cha_sel_com));
            values.put("programa_com", stringToBD(programa_com));
            values.put("sa_sel_com", stringToBD(sa_sel_com));
            values.put("cap_sel_com", stringToBD(cap_sel_com));
            values.put("rtd_sel_com", stringToBD(rtd_sel_com));
            values.put("tp_sel_com", stringToBD(tp_sel_com));
            values.put("sav_sel_com", stringToBD(sav_sel_com));
            values.put("s3_sel_com", stringToBD(s3_sel_com));
            values.put("s4_sel_com", stringToBD(s4_sel_com));
            values.put("s5_sel_com", stringToBD(s5_sel_com));
            values.put("s6_sel_com", stringToBD(s6_sel_com));
            values.put("s7_sel_com", stringToBD(s7_sel_com));
            values.put("s8_sel_com", stringToBD(s8_sel_com));
            values.put("tde_sel_com", stringToBD(tde_sel_com));
            values.put("tr_sel_com", stringToBD(tr_sel_com));
            values.put("mr_sel_com", stringToBD(mr_sel_com));
            values.put("pr_sel_com", stringToBD(pr_sel_com));
            values.put("opr_sel_com", stringToBD(opr_sel_com));

            values.put("sie_sel_com", stringToBD(sie_sel_com));
            values.put("us_sel_com", stringToBD(us_sel_com));
            values.put("gpt_sel_com", stringToBD(gpt_sel_com));
            values.put("mh_sel_com", stringToBD(mh_sel_com));
            values.put("pet_com", stringToBD(pet_com));
            values.put("prog_sel_com", stringToBD(prog_sel_com));
            values.put("sag_sel_com", stringToBD(sag_sel_com));
            values.put("capg_sel_com", stringToBD(capg_sel_com));
            values.put("rtdg_sel_com", stringToBD(rtdg_sel_com));
            values.put("tpg_sel_com", stringToBD(tpg_sel_com));
            values.put("cio_sel_com", stringToBD(cio_sel_com));
            values.put("oppr_sel_com", stringToBD(oppr_sel_com));
            values.put("oprm_sel_com", stringToBD(oprm_sel_com));

            values.put("siegc_sel_com", stringToBD(siegc_sel_com));
            values.put("gbt_sel_com", stringToBD(gbt_sel_com));
            values.put("mhgc_sel_com", stringToBD(mhgc_sel_com));
            values.put("progc_com", stringToBD(progc_com));
            values.put("proga_com", stringToBD(proga_com));
            values.put("sagc_sel_com", stringToBD(sagc_sel_com));
            values.put("capgc_sel_com", stringToBD(capgc_sel_com));
            values.put("rtdgc_sel_com", stringToBD(rtdgc_sel_com));
            values.put("tpgc_sel_com", stringToBD(tpgc_sel_com));
            values.put("ciogc_sel_com", stringToBD(ciogc_sel_com));
            values.put("sp_sel_com", stringToBD(sp_sel_com));
            values.put("oprmgc_sel_com", stringToBD(oprmgc_sel_com));
            values.put("kit_sel_com", stringToBD(kit_sel_com));
            values.put("db_sel_com", stringToBD(db_sel_com));
            values.put("ir_sel_com", stringToBD(ir_sel_com));
            values.put("ec_sel_com", stringToBD(ec_sel_com));

            values.put("energia_com", stringToBD(energia_com));
            values.put("openergia_com", stringToBD(openergia_com));
            values.put("bat_com", stringToBD(bat_com));
            values.put("procesador_com", stringToBD(procesador_com));
            values.put("reloj_com", stringToBD(reloj_com));
            values.put("entra_com", stringToBD(entra_com));
            values.put("entrapul_com", stringToBD(entrapul_com));
            values.put("ensaldig_com", stringToBD(ensaldig_com));
            values.put("entraana_com", stringToBD(entraana_com));
            values.put("entratemp_com", stringToBD(entratemp_com));
            values.put("comuni_com", stringToBD(comuni_com));
            values.put("led_com", stringToBD(led_com));
            values.put("capaexp_com", stringToBD(capaexp_com));
            values.put("garantia_com", stringToBD(garantia_com));
            values.put("trans_com", stringToBD(trans_com));
            values.put("sentem_com", stringToBD(sentem_com));

            values.put("entener_com", stringToBD(entener_com));
            values.put("fuente_com", stringToBD(fuente_com));
            values.put("sumiana_com", stringToBD(sumiana_com));
            values.put("moniener_com", stringToBD(moniener_com));
            values.put("batreser_com", stringToBD(batreser_com));
            values.put("proce_com", stringToBD(proce_com));
            values.put("memoria_com", stringToBD(memoria_com));
            values.put("relojtr_com", stringToBD(relojtr_com));
            values.put("entrapuls_com", stringToBD(entrapuls_com));
            values.put("entrasaldig_com", stringToBD(entrasaldig_com));
            values.put("entraanal_com", stringToBD(entraanal_com));
            values.put("comunica_com", stringToBD(comunica_com));
            values.put("ledestado_com", stringToBD(ledestado_com));
            values.put("capaexpa_com", stringToBD(capaexpa_com));
            values.put("analogdig_com", stringToBD(analogdig_com));
            values.put("ieee_com", stringToBD(ieee_com));

            values.put("id_proyect", id_proyect.trim());
            values.put("id_user", iduser.trim());
            values.put("description_com",  stringToBD(description_com.trim()));
            
        }catch(Exception ex){
            throw new Exception(ex.getMessage());
        }
       
       return values;
        
    }
    
   
       
}


