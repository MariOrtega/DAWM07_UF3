<%-- 
    Document   : institut
    Created on : 10-abr-2019, 17:08:23
    Author     : mari
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
        <!-- jQuery -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
        <title>Gestió de l'Institut</title>
    </head>
    <body>
        <div>
            <div class="container">
                <nav>
                    <ul class="nav nav-pills">
                        <li role="presentation" class="active">
                            <a href="<spring:url value= '/'/>">
                                Inici
                            </a>
                        </li>
                        <li role="Presentation" class="">
                            <a href=" />" class="btn btndanger btn-mini pull-right">desconnectar</a>
                        </li>                        
                    </ul>    
                </nav>
            </div>
        </div>   

        <!-- Secció del titol de la pagina inici -->                      
        <section>
            <div class="jumbotron">
                <div class="container">
                    <h1>${cap}</h1>
                    <p>${accio}</p>
                </div>
            </div>
        </section>



        <!-- opcions: Llistat d'opcions que conté  les funcionalitats del programa.
        Per cada funcionalitat (Afegir, Consultar, Filtrar i Modificar)
        s'ha d'enviar la següent informació: titol, desc, url, icon -->
        <section class="container"> 
            <c:forEach var="item" items="${opcions}">
              
                <div class="card" >
                    <div class="col-sm-6 col-md-3">

                        <div class="card-body thumbnail w-25 p-3">
                            <h1 class="card-title">${item.titol}</h1>
                            <p class="card-text">${item.desc}.</p>
                            <a href="<spring:url value= '${item.url}' />" class="btn btn-primary">
                                <span class="${item.icon}" />Anar</a>

                        </div>
                    </div>
                </div>
                </c:forEach>  

        </section>  


    </body>
</html>
