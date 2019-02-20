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
        Vector<Map> data = this.consultar(tabla, "id, name, fullname", "");
        return data;
    }

    public Vector<Map> addUsuario(Map<String, String> values) throws Exception {
        String[] roles = values.get("roles").split(",");
        values.remove("roles");

        String[] areas = null;
        if (!values.get("areas").toString().equals("")) {
            areas = values.get("areas").split(",");
        }
        values.remove("areas");

        try {

            this.add(tabla, values);//, conn);

            Vector<Map> data = this.consultar(tabla, "id, name, fullname", "name = " + values.get("name"));
            String idUser = data.get(0).get("id").toString();
            addRolesToUser(idUser, roles);
            if (areas != null) {
                addAreasToUser(idUser, areas);
            }

            return data;
        } catch (Exception ex) {
            throw new Exception("El nombre de usuario ya existe");
        }
    }

    public void addAreasToUser(String id_user, String[] id_area) throws Exception {

        String sql = "INSERT INTO [" + this.bd + "].[dbo].[AreasUsuario]\n"
                + "           ([id_area]\n"
                + "           ,[id_user])\n"
                + "     VALUES\n";

        for (int i = 0; i < id_area.length; i++) {
            if (i == id_area.length - 1) {
                sql += "(" + id_area[i] + "," + id_user + ")";
            } else {
                sql += "(" + id_area[i] + "," + id_user + "),";
            }
        }

        try {
            this.ejecutarUpdate(sql, null);
        } catch (Exception ex) {
            throw new Exception("Error al insertar roles a usuario");
        }
    }

    public void addRolesToUser(String id_user, String[] id_rol) throws Exception {

        String sql = "INSERT INTO [" + this.bd + "].[dbo].[RolesUsuario]\n"
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
        String sql = "DELETE FROM [" + this.bd + "].[dbo].[RolesUsuario]\n"
                + " WHERE id_user=" + id_user;

        try {
            this.ejecutarUpdate(sql, null);
        } catch (Exception ex) {
            throw new Exception("Error al insertar roles a usuario");
        }
    }
    
    public void deleteAreasRolesToUser(String id_user) throws Exception {
        String sql = "DELETE FROM [" + this.bd + "].[dbo].[AreasUsuario]\n"
                + " WHERE id_user=" + id_user;

        try {
            this.ejecutarUpdate(sql, null);
        } catch (Exception ex) {
            throw new Exception("Error al eliminar areas a usuario");
        }
    }

    public void editUsuario(Map<String, String> values, String iduser) throws Exception {

        try {
            //Eliminar Areas
            deleteAreasRolesToUser(iduser);
            
            //Eliminar Roles
            deleteRolesToUser(iduser);

            //Agregar Roles
            if (!(values.get("roles").equals(""))) {
                String roles[] = values.get("roles").split(",");
                addRolesToUser(iduser, roles);
            }
            //Agregar areas
            if (!(values.get("areas").equals(""))) {
                String areas[] = values.get("areas").split(",");
                addAreasToUser(iduser, areas);
            }
            
            values.remove("roles");
            values.remove("areas");

            this.edit(tabla, values, "id = " + iduser);
        } catch (Exception ex) {
            throw new Exception("Error al editar el usuario, posible nombre de usuario duplicado");
        }
    }

    public void deleteUsuario(String iduser) throws Exception {
        try {
            this.delete(tabla, "id = " + iduser);
        } catch (Exception ex) {

            if (ex.getMessage().contains("The DELETE statement conflicted with the REFERENCE constraint")) {
                throw new Exception("Este registro tiene dependencias");
            } else {
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

            Vector<Map> data = this.consultar(tabla, "id, id_rol, fullname, name", where);

            if (data.isEmpty()) {

                if (pass == null) {
                    throw new Exception("El usuario no existe");
                } else {
                    throw new Exception("Error de autenticación");
                }
            } else {

                //Get Roles usuario
                String id = data.get(0).get("id").toString();
                String fname = data.get(0).get("fullname").toString();
                name = data.get(0).get("name").toString();

                String sql = "SELECT roles.nombre, roles.id\n"
                        + "  FROM [" + this.bd + "].[dbo].[RolesUsuario] rolusu\n"
                        + "  inner Join [" + this.bd + "].[dbo].[Roles2] as roles\n"
                        + "  on rolusu.id_rol = roles.id\n"
                        + "  where id_user = " + id;

                data = this.consultar(sql);

                String strRoles = "";

                for (int i = 0; i < data.size(); i++) {
                    strRoles += "-" + data.get(i).get("id").toString() + "-";
                }

                json.put("type", "2"); //Tipo 2 es de todos los lideres
                json.put("id", id);
                json.put("roles", strRoles);
                json.put("fullname", fname);
                json.put("name", name);

                /*where = " id_user = " + id;
                data = this.consultar("RolesUsuario", "id_rol", where);

                json.put("type", "2"); //Tipo 2 es de todos los lideres
                json.put("id", id);
                json.put("roles", data);
                json.put("name", "Julian");

                /*if (data.get(0).get("id_rol") == null) {

                    where = " id_user = " + id;

                    data = this.consultar("RolesUsuPro", "*", where);

                    json.put("type", "2"); //Tipo 2 es de todos los lideres
                    json.put("id", id);
                    json.put("rows", data);

                } else {
                    json.put("type", data.get(0).get("id_rol").toString());
                    json.put("id", id);
                    json.put("fullname", data.get(0).get("fullname").toString());
                }*/
            }

            return json;

        } catch (Exception ex) {
            throw new Exception(ex.getMessage());
        }
    }

    public Vector<Map> getUsuarioRoles(String name) throws Exception {

        try {
            String sql = "SELECT roluser.id, roles.nombre as name, roles.descripcion, roles.id as idrol\n"
                    + "  FROM [" + this.bd + "].[dbo].[RolesUsuario] as roluser\n"
                    + "  INNER JOIN [" + this.bd + "].[dbo].[Users] as users ON users.id = roluser.id_user\n"
                    + "  INNER JOIN [" + this.bd + "].[dbo].[Roles2] as roles ON roluser.id_rol = roles.id\n"
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
    
    public Vector<Map> getUsuarioAreas2(String name) throws Exception {

        try {
            String sql = "SELECT areas.name, areas.descripcion\n" +
            " FROM Plataforma.[dbo].[AreasUsuario] as auser\n" +
            " INNER JOIN Plataforma.[dbo].[Users] as users ON users.id = auser.id_user\n" +
            " INNER JOIN Plataforma.[dbo].[Areas] as areas ON auser.id_area = areas.id\n" +
            " WHERE users.name = '"+ name +"'";

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

    public Vector<Map> getUsuarioAreas(String name) throws Exception {

        try {
            String sql = "SELECT areas.id, areas.name\n"
                    + " FROM [Plataforma].[dbo].[AreasUsuario] as auser\n"
                    + " INNER JOIN ["+this.bd+"].[dbo].[Users] as users ON users.id = auser.id_user\n"
                    + " INNER JOIN ["+this.bd+"].[dbo].[Areas] as areas ON auser.id_area = areas.id\n"
                    + " WHERE users.name = '" + name + "'";

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

    public Vector<Map> getUserInfo(String name) throws Exception {

        try {
            String where = "name = " + stringToBD(name);

            Vector<Map> data = this.consultar(tabla, "fullname", where);
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
