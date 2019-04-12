<%-- 
    Document   : ajutFiltre
    Created on : 12-abr-2019, 15:06:18
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

        <section>     
            <div class="jumbotron">
                <div class="container">
                    <h2 class="text-danger"><strong>Com fer una petició directament a l'URL ?</strong></h2>
                </div>
            </div>
        </section>
        <section class="container">
            <div class="row">



                <div class="col-sm-6 col-md-3" style="padding-bottom: 15px">
                    <div class="thumbnail">
                        <div classs="caption">
                            <h4 class="text-danger"><strong>Com cerquem estudiants?</strong></h4>
                                <p>Afegir a l'URL dos paràmetres de la seguent manera:
                                </p>
                                <p>persona=Estudiant;provincia={dos primers digits del NSS</p>

                                <p><strong>Exemple:</strong><p>
                                <p>Volem cercar estudiants amb el numero de la seguretat social que comencin per 11</p>
                                <p>Haurem de posar a continuació de la URL:<p></p><strong> persona=Estudiant;provincia=11</strong></p>
                                <p>El resultat seria el seguent:  </p>
                                <a href="http://localhost:8080/dawm07eac3Institut/filtrar/persona=Estudiant;provincia=11" class="btn btn-info" role="button">Link de Prova</a>
                               
                        </div>
                    </div>
                </div>

                <div class="col-sm-6 col-md-3" style="padding-bottom: 15px">
                    <div class="thumbnail">
                        <div classs="caption">
                            <h4 class="text-danger"><strong>Com cerquem Professors?</strong></h4>
                                <p>Afegir a l'URL dos paràmetres de la seguent manera:
                                </p>
                                <p>persona=Professor;provincia={dos primers digits del NSS</p>

                                <p><strong>Exemple:</strong><p>
                                <p>Volem cercar professors amb el numero de la seguretat social que comencin per 11</p>
                                <p>Haurem de posar a continuació de la URL: <strong> persona=Professor;provincia=11</strong></p>
                                <p>El resultat seria el seguent:  </p><a href="http://localhost:8080/dawm07eac3Institut/filtrar/persona=Professor;provincia=11" class="btn btn-info" role="button">Link de Prova</a>
                               
                        </div>
                    </div>
                </div>



                <div class="col-sm-6 col-md-3" style="padding-bottom: 15px">
                    <div class="thumbnail">
                        <div classs="caption">
                            <h4 class="text-danger"><strong>Com cerquem Personal d'administracio i serveis?</strong></h4>
                                <p>Afegir a l'URL dos paràmetres de la seguent manera:
                                </p>
                                <p>persona=Pas;provincia={dos primers digits del NSS</p>

                                <p><strong>Exemple:</strong><p>
                                <p>Volem cercar personal d'aminstració i servei amb el numero de la seguretat social que comencin per 11</p>
                                <p>Haurem de posar a continuació de la URL: <strong> persona=Pas;provincia=11</strong></p>
                                <p>El resultat seria el seguent: </p><a href="http://localhost:8080/dawm07eac3Institut/filtrar/persona=Pas;provincia=11" class="btn btn-info" role="button">Link de Prova</a>
                                
                        </div>
                    </div>
                </div>

            </div>
        </section>



    </body>
</html>


<!--

 <h4 class="text-danger"><strong>Com cerquem estudiants?</strong></h4>
                                <p>Afegir a l'URL dos paràmetres de la seguent manera:
                                </p>
                                <p>persona=Estudiant;provincia={dos primers digits del NSS</p>

                                <p><strong>Exemple:</strong><p>
                                <p>Volem cercar estudiants amb el numero de la seguretat social que comencin per 11</p>
                                <p>Haurem de posar a continuació de la URL: <strong> persona=Estudiant;provincia=11</strong></p>
                                <p>El resultat seria el seguent: <a href="http://localhost:8080/dawm07eac3Institut/filtrar/persona=Estudiant;provincia=11" class="btn btn-info" role="button">Link de Prova</a>
                                </p>




 <h4 class="text-danger"><strong>Com cerquem professors?</strong></h4>
                                <p>Afegir a l'URL dos paràmetres de la seguent manera:
                                </p>
                                <p>persona=Professor;provincia={dos primers digits del NSS</p>

                                <p><strong>Exemple:</strong><p>
                                <p>Volem cercar professors amb el numero de la seguretat social que comencin per 11</p>
                                <p>Haurem de posar a continuació de la URL: <strong> persona=Estudiant;provincia=11</strong></p>
                                <p>El resultat seria el seguent: <a href="http://localhost:8080/dawm07eac3Institut/filtrar/persona=Professor;provincia=11" class="btn btn-info" role="button">Link de Prova</a>
                                </p>




-->