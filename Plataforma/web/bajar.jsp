<%@page import="javafx.scene.control.Alert"%>
<%@page import="org.json.JSONObject"%>
<%@ page import="java.util.*" %>
<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="org.apache.commons.fileupload.disk.*" %>
<%@ page import="org.apache.commons.fileupload.servlet.*" %>
<%@ page import="org.apache.commons.io.*" %>
<%@page import="Controller.GeneralController"%>
<%@ page import="java.io.*" %>

<%
    String filename = request.getParameter("filename");
    String path = request.getParameter("path");
    System.out.print("Ruta: " + path);

    try {
        File file = new File(path + "\\" + filename);
        String contentType = "application/xls";
        response.setContentType(contentType);
        response.addHeader("Content-Disposition", "attachment; filename=" + filename);
        response.setContentLength((int) file.length());
        ServletOutputStream sos = response.getOutputStream();
        BufferedInputStream bis = new BufferedInputStream(new FileInputStream(file));

        int bytesR = bis.read();
        while (bytesR != -1) {
            sos.write(bytesR);
            bytesR = bis.read();
        }
        sos.close();
        bis.close();
    } catch (Exception ex) {
        System.out.println("Mesaje ES: " + ex.getMessage());

    }


%>