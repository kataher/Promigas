/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model.Administracion;

import Model.Model;
import java.sql.Connection;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;
import java.util.Vector;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.json.JSONObject;

/**
 *
 * @author kata__000
 */
public class UsuariosModel extends Model {

    private static final String tabla = "Users";

    public UsuariosModel() {

    }

    public String getTabla() {
        return tabla;
    }

    public Vector<Map> getUsuarios() throws Exception {
        //Save el nombre y las especialidades del proyecto
        Vector<Map> data = this.consultar(tabla, "id, name", "");
        return data;
    }

    public Vector<Map> addUsuario(Map<String, String> values) throws Exception {
        String[] roles = values.get("roles").split(",");
        values.remove("roles");

        try {

            this.add(tabla, values);//, conn);

            Vector<Map> data = this.consultar(tabla, "id, name", "name = " + values.get("name"));
            String idUser = data.get(0).get("id").toString();
            addRolesToUser(idUser, roles);

            return data;
        } catch (Exception ex) {
            throw new Exception("El nombre de usuario ya existe");
        }
    }

    public void addRolesToUser(String id_user, String[] id_rol) throws Exception {

        String sql = "INSERT INTO [Plataforma].[dbo].[RolesUsuario]\n"
                + "           ([id_rol]\n"
                + "           ,[id_user])\n"
                + "     VALUES\n";

        for (int i = 0; i < id_rol.length; i++) {
            if (i == id_rol.length - 1) {
                sql += "(" + id_rol[i] + "," + id_user + ")";
            } else {
                sql += "(" + id_rol[i] + "," + id_user + "),";
            }
        }

        try {
            this.ejecutarUpdate(sql, null);
        } catch (Exception ex) {
            throw new Exception("Error al insertar roles a usuario");
        }
    }

    public void deleteRolesToUser(String id_user) throws Exception {
        String sql = "DELETE FROM [Plataforma].[dbo].[RolesUsuario]\n"
                + " WHERE id_user=" + id_user;

        try {
            this.ejecutarUpdate(sql, null);
        } catch (Exception ex) {
            throw new Exception("Error al insertar roles a usuario");
        }
    }

    public void editUsuario(Map<String, String> values, String iduser) throws Exception {

        try {
            //Eliminar Roles
            deleteRolesToUser(iduser);

            //Agregar Roles
            if(!(values.get("roles").equals(""))){
                String roles[] = values.get("roles").split(",");
                addRolesToUser(iduser, roles);
            }
            values.remove("roles");

            this.edit(tabla, values, "id = " + iduser);
        } catch (Exception ex) {
            throw new Exception("Error al editar el usuario, posible nombre de usuario duplicado");
        }
    }

    public void deleteUsuario(String iduser) throws Exception {
        try {
            this.delete(tabla, "id = " + iduser);
        } catch (Exception ex) {
            
            if(ex.getMessage().contains("The DELETE statement conflicted with the REFERENCE constraint"))
            {
                throw new Exception("Este registro tiene dependencias");
            }else{
                throw new Exception("Error al eliminar el usuario");
            }

        }

    }

    public static String getUsername(String id) throws Exception {
        String where = "id = " + id;
        String username = "";

        Vector<Map> data = consultar(tabla, "name", where);

        if (data.isEmpty() == false) {
            username = data.get(0).get("name").toString();
        } else {
            throw new Exception("El usuario no existe");
        }

        return username;
    }

    public JSONObject login(String name, String pass) throws Exception {

        JSONObject json = new JSONObject();
        try {
            String where = "name = " + name + " and password = " + pass;

            if (pass == null) {
                where = "name = " + name;
            }

            Vector<Map> data = this.consultar(tabla, "id, id_rol", where);

            if (data.isEmpty()) {

                if (pass == null) {
                    throw new Exception("El usuario no existe");
                } else {
                    throw new Exception("Error de autenticación");
                }
            } else {

                String id = data.get(0).get("id").toString();

                if (data.get(0).get("id_rol") == null) {

                    where = " id_user = " + id;

                    data = this.consultar("RolesUsuPro", "*", where);

                    json.put("type", "2"); //Tipo 2 es de todos los lideres
                    json.put("id", id);
                    json.put("rows", data);

                } else {
                    json.put("type", data.get(0).get("id_rol").toString());
                    json.put("id", id);
                }

            }

            return json;

        } catch (Exception ex) {
            throw new Exception(ex.getMessage());
        }
    }

    public Vector<Map> getUsuarioRoles(String name) throws Exception {

        try {
            String sql = "SELECT roluser.id, roles.nombre as name, roles.descripcion, roles.id as idrol\n"
                    + "  FROM [Plataforma].[dbo].[RolesUsuario] as roluser\n"
                    + "  INNER JOIN [Plataforma].[dbo].[Users] as users ON users.id = roluser.id_user\n"
                    + "  INNER JOIN [Plataforma].[dbo].[Roles2] as roles ON roluser.id_rol = roles.id\n"
                    + "  WHERE users.name = '" + name + "'";

            Vector<Map> data = this.consultar(sql);

            if (data != null) {
                return data;
            } else {
                return null;
            }

        } catch (Exception ex) {
            throw new Exception(ex.getMessage());
        }
    }

}
