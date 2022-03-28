<%-- 
    Document   : page2
    Created on : 28 de mar de 2022, 19:31:56
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
        
        <%@include file="WEB-INF/jspf/navBar.jspf"%><br>
        
         <form method="get"  action="page2.jsp">
            Valor Inicial: <p> <input class="form-control" type="number" name="value1" value="1"/></p>
            Juros: <p> <input class="form-control" type="number" name="porcent1" value="1"/></p>
            Meses: <p> <input class="form-control" type="number" name="date1" value="1"/></p>
            <div class="text-center"><p><input class="btn btn-secondary" type="submit" value="Calcular"/></p></div>
            </form>
        <br>
       <%   
           
             
            String Cap = request.getParameter("value1");
           int c = Integer.parseInt(Cap);
           
           String Jr = request.getParameter("porcent1");
           float j = Integer.parseInt(Jr);
           
            String Dt = request.getParameter("date1");
           int D = Integer.parseInt(Dt);
            
           
           
           
           
           
           DecimalFormat deci = new DecimalFormat("0.00");
            
            double Pc = j / 100; 
            
           double Vg = (c * Pc) * D;
           
           double Vf = Vg + c; %>
           
            <div>
               <table class="table">
                   <thead>
    <tr>
      <th scope="col">Capital inicial</th>
      <th scope="col">Juros</th>
      <th scope="col">Meses</th>
      <th scope="col">Valor Ganho</th>
      <th scope="col">Valor futuro</th>
    </tr>
  </thead>
    <tbody>        
    <tr>
      <th scope="row"><% out.println(deci.format(c)); %></th>
          <td> <% out.println(deci.format(j));  %> </td>
          <td> <% out.println(deci.format(D));  %> </td>
          <td> <% out.println(deci.format(Vg));  %> </td>
          <td> <% out.println(deci.format(Vf));  %> </td>
     </tr>

  </tbody>
  
            </table>
           </div>
           
           <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    </body>
</html>
