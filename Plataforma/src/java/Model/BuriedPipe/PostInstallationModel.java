/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model.BuriedPipe;

/**
 *
 * @author kata__000
 */
public class PostInstallationModel extends Model.Model{
    private final String tabla;    

    public PostInstallationModel() {
      super();
      this.tabla = "PostInstallation";
    }
    
    public String getTabla() {
        return tabla;
    }
}
