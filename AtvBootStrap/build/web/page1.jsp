<%-- 
    Document   : page1
    Created on : 28 de mar de 2022, 19:31:42
    Author     : Matheus Meduneckas
--%>
<%@page import="java.text.DecimalFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    </head>
    <body>
       <%@include file="WEB-INF/jspf/navBar.jspf" %>     
                    
        
       <%
            String Cap = request.getParameter("value2");
          float c = Integer.parseInt(Cap);
           
           String Jr = request.getParameter("porcent2");
           float j = Integer.parseInt(Jr);
           
            String Dt = request.getParameter("date2");
           int D = Integer.parseInt(Dt);

           float cAnt=0;
           
           DecimalFormat deci = new DecimalFormat("0.00");

           %>
           
           <div>
               <table class="table">
                   <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Valor Anterior</th>
      <th scope="col">Valor Atual</th>
    </tr>
  </thead>
    <tbody>
        <% for(int i = 0; i<=D; i++){ %>
           
    <tr>
      <th scope="row"><% out.println(i); %></th>
      
      <td> <% out.println(deci.format(cAnt));; %></td>
         <% c = c+(c*(j/100)); %>
         <td> <% out.println(deci.format(c)); %></td>
          <% cAnt = c; %>
      
    </tr>
   <% } %>
  </tbody>
  
            </table>
           </div>
        
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
        
    </body>
</html>
