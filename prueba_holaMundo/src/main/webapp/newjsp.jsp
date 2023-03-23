<%-- 
    Document   : newjsp
    Created on : 22/03/2023, 3:43:10 p. m.
    Author     : Johan Herrera
--%>

<%@page import="imperial.Supremacy2"%>
<%@page import="imperial.At"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Star Wars</title>
    <!-- Link para obtener otra fuente de letra -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Edu+NSW+ACT+Foundation:wght@400;600&display=swap" rel="stylesheet">
    <!-- Llamado de los estilos CSS -->
    <link rel="stylesheet" href="estilos.css">
</head>
<body>
    <%@page import="imperial.Herencia" %>
    <%@page import="javax.servlet.http.HttpSession" %>  
    <% 
        
        int numeroTipoNaves = Integer.parseInt(request.getParameter("numTipoNaves"));
        int recorido = Integer.parseInt(request.getParameter("recorido"));
        int numeroPasajeros = Integer.parseInt(request.getParameter("numPasajeros"));
        int parsec = Integer.parseInt(request.getParameter("parsec"));
        
        Herencia halconMilenario = new Herencia(numeroPasajeros, recorido , numeroTipoNaves, parsec);
        
        int numeroTipoNaves2 = Integer.parseInt(request.getParameter("numTipoNaves2"));
        int recorido2 = Integer.parseInt(request.getParameter("recorido2"));
        int numeroPasajeros2 = Integer.parseInt(request.getParameter("numPasajeros2"));
        int parsec2 = Integer.parseInt(request.getParameter("parsec2"));
        
        Herencia destructorImperial = new Herencia(numeroPasajeros2, recorido2 , numeroTipoNaves2, parsec2);
        
        int numeroTipoNaves3 = Integer.parseInt(request.getParameter("numTipoNaves3"));
        int recorido3 = Integer.parseInt(request.getParameter("recorido3"));
        int numeroPasajeros3 = Integer.parseInt(request.getParameter("numPasajeros3"));
        int parsec3 = Integer.parseInt(request.getParameter("parsec3"));
        
        Herencia lanzaderaImperial = new Herencia(numeroPasajeros3, recorido3 , numeroTipoNaves3, parsec3);
       
        int numeroTipoNaves4 = Integer.parseInt(request.getParameter("numTipoNaves4"));
        int recorido4 = Integer.parseInt(request.getParameter("recorido4"));
        int numeroPasajeros4 = Integer.parseInt(request.getParameter("numPasajeros4"));
        int parsec4 = Integer.parseInt(request.getParameter("parsec4"));
        int ships = Integer.parseInt(request.getParameter("ships"));
        
        Supremacy2 supremacy = new Supremacy2(numeroPasajeros4, recorido4 , numeroTipoNaves4, parsec4, ships);
        
        int numeroTipoNaves5 = Integer.parseInt(request.getParameter("numTipoNaves5"));
        int recorido5 = Integer.parseInt(request.getParameter("recorido5"));
        int numeroPasajeros5 = Integer.parseInt(request.getParameter("numPasajeros5"));
        int parsec5 = Integer.parseInt(request.getParameter("parsec5"));
        
        At at = new At(numeroPasajeros5, recorido5, numeroTipoNaves5, parsec5);
        
        double totalCombustible = 0;
        
        totalCombustible = halconMilenario.calcular(recorido, numeroTipoNaves, parsec)+destructorImperial.calcular(recorido2, numeroTipoNaves2, parsec2)+lanzaderaImperial.calcular(recorido3, numeroTipoNaves3, parsec3)+supremacy.calcular(recorido4, numeroTipoNaves4, parsec4)+at.calcular(recorido5, numeroTipoNaves5, parsec5);
    %>
    <!-- Encabezado de Pagina -->
    <header>
        <h1>Datos y Combustibe Final</h1>
    </header>
    <!-- Cuerpo de Pgina --> 
    <section class="resumen">tra
        <article class="formulario">
            <h2>Halcon Milenario</h2> 
            <p><%= halconMilenario.imprimirdatos(numeroTipoNaves, recorido, numeroPasajeros, parsec) %></p>
        </article>
        <article class="formulario">
            <h2>Destructor Estelar</h2>
            <p><%= destructorImperial.imprimirdatos(numeroTipoNaves2, recorido2, numeroPasajeros2, parsec2) %></p>            
        </article>
        <article class="formulario">
            <h2>LanzaderaImperial</h2>
            <p><%= lanzaderaImperial.imprimirdatos(numeroTipoNaves3, recorido3, numeroPasajeros3, parsec3) %></p>
        </article>
        <article class="formulario">
            <h2>Supremacy</h2>          
            <p><%= supremacy.imprimirdatos(numeroTipoNaves4, recorido4, numeroPasajeros4, parsec4) %></p>
        </article>
        <article class="formulario">
            <h2>At-At</h2>          
            <p><%= at.imprimirdatos(numeroTipoNaves5, recorido5, numeroPasajeros5, parsec5) %></p>
        </article>       
        <article class="formulario">
            <h2>Gasolina Total Estimada</h2>          
            <p><%= totalCombustible %></p>
        </article>
    </section>    
    <div class="resumen">
        <button class="botones">
            <a href="Index.html">Volver</a>
        </button>
    </div>
</body>
</html>
