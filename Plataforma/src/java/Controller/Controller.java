/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import java.util.HashMap;
import java.util.Map;
import java.util.Vector;
import javax.servlet.http.HttpServletRequest;
import org.json.JSONException;
import org.json.JSONObject;
import java.text.Normalizer;

/**
 *
 * @author kata__000
 */
public class  Controller {
    
    protected static String stringToBD(String s){
        if(s != null){
            return "'" + s + "'";
        }
        
        return null;
    }
    
    protected String normalizar(String valor){
        valor = Normalizer.normalize(valor, Normalizer.Form.NFD);
        valor = valor.replaceAll("[\\p{InCombiningDiacriticalMarks}]", "");
        return valor;
    
    }
}
