<%  try{
     if(request.getParameter("type")!=null){
      String tipo = request.getParameter("type");
      session.setAttribute("tipo", tipo );
      String idusu = request.getParameter("idusu");
      session.setAttribute("idusu", idusu );
      
     }else{
        //response.sendRedirect("index.jsp");
     }
    }catch(Exception ex){
     // response.sendRedirect("index.jsp");
    }
    
%>