<%-- 
    Document   : index
    Created on : 28 de mar de 2022, 19:20:21
    Author     : Matheus Meduneckas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" href="semantic/dist/semantic.min.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <title>JSP Page</title>
        
        
        
    </head>
    <body>
        
       <%@include file="WEB-INF/jspf/navBar.jspf"%>
        
       <!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Atividade Aula 05</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style>
            .text{
               text-align: center; 
             
            }         
        </style>
    </head>
    <body>
        <br>
        <div class="container">
            <div class="border border-primary"><h4 class="text"> Matheus Meduneckas Pires da silva </h4></div><br>
        <div class="border border-primary"><h4 class="text"> Calculadora de Juros Simples e Juros Compostos </h4></div>
        </div><br>
        
        <div class="border border-3"> <h3 class="text"> Juros Simples </h3> </div>

        <div class="box" aligin="center">
            <div class="box2">
            <form method="get"  action="page2.jsp">
            Valor Inicial: <p> <input class="form-control" type="number" name="value1" value="1"/></p>
            Juros: <p> <input class="form-control" type="number" name="porcent1" value="1"/></p>
            Meses: <p> <input class="form-control" type="number" name="date1" value="1"/></p>
            <div class="text-center"><p><input class="btn btn-secondary" type="submit" value="Calcular"/></p></div>
            </form>
            </div>
        </div>
        
        <div class="border border-3"> <h3 class="text"> Juros Composto </h3> </div>
        <div class="box">
            <div class="box2">  
        <form method="get" action="page1.jsp">
             Valor Inicial compost: <p><input class="form-control" type="number" name="value2" value="1"/></p>
             Juros:  <p><input class="form-control" type="number"  name="porcent2" value="1"/></p>
             Meses:  <p><input class="form-control" type="number"  name="date2" value="1"/></p>
             <div class="text-center"><p><input class="btn btn-secondary" type="submit" value="Calcular"/></p></div>
            </div>
        </div>
        </form>
    </body>
</html>

      
     
        
      
  
        
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    </body>
</html>
