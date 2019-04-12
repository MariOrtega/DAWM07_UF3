<%-- 
    Document   : personesPerFiltre
    Created on : 12-abr-2019, 20:27:19
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
                
                 <!-- Secció de les persones que cumpleixen els requsists 
                 La pàgina, mitjançant etiquetes JSTL, ha d'iterar sobre el llistat de persones proporcionades pel controlador.
                 De cadascuna de les persones ha de mostrar la informació continguda a la classe Persona.-->     
                 <section class="container">
            <div class="row">
                <c:forEach var="item" items="${persona}">
                    <div class="col-sm-6 col-md-3" style="padding-bottom: 15px">
                        <div class="thumbnail">
                            <div classs="caption">
                                
                                <h3 class="text-primary"><strong>Nom: </strong>${item.nom}</h3>
                               <h4><strong>NIF:  </strong>${item.nif}</h4>
                                <h4><strong>NSS:  </strong>${item.nss}</h4>
                                <h4><strong>Telèfon:  </strong>${item.telefon}</h4>
                            </div>
                        </div>
                    </div>
                    </c:forEach>  
            </div>
        </section>

    </body>
</html>
