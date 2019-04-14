<%-- 
    Document   : modifica
    Created on : 13-abr-2019, 11:46:27
    Author     : mari
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
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
                            <a href="<spring:url value= "/" />">
                                Inici
                            </a>
                        </li>
                        <!-- Utilitzant l'etiqueta /sec:authorize> fes que es mostri el botó per permetre la desconnexió  a l'usuari que ha fet login.  -->
                          <sec:authorize access="hasRole('ROLE_ADMIN') or hasRole('ROLE_USER')"> 
                        <li role="Presentation" class="">
                            <a href="<c:url value= '/j_spring_security_logout'/>" class="btn btndanger btn-mini pull-right">desconnectar</a>
                        </li>         
                         </sec:authorize> 
                         <!-- fi de la desconnexio -->                         
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

        <section>     
            <div classs="container">
                <div class="row">
                    <div class="col-sm-6 col-md-3" style="padding-bottom: 15px" >
                        <div class="thumbnail">
                            <div class="caption">
                                <h4 class="text-danger"><strong>Modificació de dades</strong></h4>
                                <p>Heu de canvia la URL per aquest patró:
                                </p>
                                <p>/modifica/nif/nouTelefon</p>

                               
                                <p>Per exemple si voleu modificar la persona amb nif 12121212J i amb telefon 93111111 </p>
                                <p>seria de la segunt manera: "/modifica/1111111A/6711111</p>
                               <a href="<spring:url value= '/modifica/1111111A/6711111'/>" class="btn btn-info" role="button">Link de Prova</a>
                              
                            </div>
                           
                        </div>
                        
                    </div>
                </div>

            </div>


        </section>



    </body>
</html>

