<%@page import="org.json.JSONObject"%>
<%@ page import="java.util.*" %>
<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="org.apache.commons.fileupload.disk.*" %>
<%@ page import="org.apache.commons.fileupload.servlet.*" %>
<%@ page import="org.apache.commons.io.*" %>
<%@page import="Controller.GeneralController"%>
<%@ page import="java.io.*" %>
 
<%
    
           GeneralController controller = new GeneralController(request);
           String idpro = controller.UpdateEstadoEspecialidad(request);
           String idu = session.getAttribute("idusu").toString();
           response.sendRedirect("projects3.jsp?idpro=" + idpro + "&idusu="+idu);

%>