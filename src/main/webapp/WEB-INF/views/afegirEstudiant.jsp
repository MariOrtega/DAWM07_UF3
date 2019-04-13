<%-- 
    Document   : afegirEstudiant
    Created on : 13-abr-2019, 16:25:57
    Author     : mari
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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

        <!-- Secció del Formulari -->  
        <section class="container">
            <form:form modelAttribute="novaPersona" class="form-horizontal">
                <fieldset>
                    <legend>Afegir Estudiant</legend>

                    <!-- NIF  -->
                    <div class="form-group">
                        <label class="col-label col-lg-2 col-lg-s " for="nif">NIF: </label>
                        <div class="col-lg-10">
                            <form:input id="nif" path="nif" type ="text" class="form:input-large"/>
                        </div>
                    </div> 

                    <!-- NOM  -->
                    <div class="form-group">
                        <label class="col-label col-lg-2 col-lg-s " for="nom">Nom: </label>
                        <div class="col-lg-10">
                            <form:input id="nom" path="nom" type ="text" class="form:input-large"/>
                        </div>
                    </div>

                    <!-- NSS  -->
                    <div class="form-group">
                        <label class="col-label col-lg-2 col-lg-s " for="nss">NSS:  </label>
                        <div class="col-lg-10">
                            <form:input id="nss" path="nss" type ="text" class="form:input-large"/>
                        </div>
                    </div>  




                    <div class="form-group">
                        <label class="col-label col-lg-2 col-lg-s " for="telefon">Telèfon </label>
                        <div class="col-lg-10">
                            <form:input id="telefon" path="telefon" type ="text" class="form:input-large"/>
                        </div>
                    </div>



                    <div class="form-group">
                        <label class="col-label col-lg-2 col-lg-s " for="anyNeix">Any de Neixement: </label>
                        <div class="col-lg-10">
                            <form:input id="anyNeix" path="anyNeix" type ="text" class="form:input-large"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-label col-lg-2 col-lg-s " for="anyMatricula">Any de Matricula:  </label>
                        <div class="col-lg-10">
                            <form:input id="anyMatricula" path="anyMatricula" type ="text" class="form:input-large"/>
                        </div>
                    </div>
                        
                        
                        <div clas="form-group">
                            <div class="col-lg-offset-2 col-lg-10">
                                <input type="submit" id="btnAdd" class="btn btn-primary" value="Crear"/>
                            </div>
                        </div>
                        
                </fieldset>
            </form:form>
        </section>




        <!--   Fi del formulari -->


    </body>
</html>

