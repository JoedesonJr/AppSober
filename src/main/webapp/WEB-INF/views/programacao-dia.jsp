<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="pt-br" ng-app="app">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

        <title>App Sober</title>

        <!-- ICONS / CSS -->
        <link href="<c:url value='/resources/fonts/material-icons.css'/>" rel="stylesheet">
        <link href="<c:url value='/resources/css/materialize.min.css'/>" media="screen,projection" type="text/css" rel="stylesheet" />
        <link href="<c:url value='/resources/css/style.css'/>" type="text/css" rel="stylesheet" />

        <!-- ANGULAR -->
        <script src="<c:url value='/resources/js/angular/angular.min.js'/>"></script>
        <script src="<c:url value="/resources/js/app.js"/>"></script>
        <script src="<c:url value="/resources/js/controller/soberCtrl.js"/>"></script>
        <script src="<c:url value="/resources/js/service/programacaoService.js"/>"></script>
    </head>
    <body class="background-body" ng-controller="soberCtrl" ng-init="diaEvento('${dia}')" ng-cloak>
        <!-- MENU -->
        <header>
            <nav>
                <div class="nav-wrapper background-brand">
                    <!-- LOGO SOBER -->
                    <a href="#" class="brand-logo right margin-brand">
                        <img class="responsive-img margin-logo" src="<c:url value='/resources/img/logo-sober.png'/>" width="75">
                    </a>

                    <ul id="nav-mobile" class="left">
                        <li>
                            <a class="brown-text text-darken-1" href="../programacao">
                            <i class="material-icons left">keyboard_arrow_left</i>
                            <strong>Voltar</strong></a>
                        </li>
                    </ul>
                </div>
            </nav>
        </header>   <!-- ./menu -->

        <!-- CONTEUDO -->
        <main>
            <div class="container">

                <!-- DESKTOP - TABLET -->
                <br>
                <h4 class="thin brown-text text-darken-1 hide-on-small-only">
                    <div class="row">
                        <div class="col s4 left">
                            <small ng-if="diaAnterior"><a href="../programacao/dia?d={{diaAnterior}}">< Dia anterior</a></small>
                        </div>
                        <div class="col s4 center">{{dia}}</div>
                        <div class="col s4 right">
                            <small ng-if="proximoDia"><a class="right" href="../programacao/dia?d={{proximoDia}}">Próximo dia ></a></small>
                        </div>
                    </div>
                </h4>
                <!-- MOBILE -->
                <h5 class="thin brown-text text-darken-1 hide-on-large-only hide-on-med-only center">
                    <div class="row">
                        <div class="col s4 left">
                            <small ng-if="diaAnterior"><a href="../programacao/dia?d={{diaAnterior}}">< Anterior</a></small>
                        </div>
                        <div class="col s4 center">{{diaSm}}</div>
                        <div class="col s4 right">
                            <small ng-if="proximoDia"><a class="right" href="../programacao/dia?d={{proximoDia}}">Próximo ></a></small>
                        </div>
                    </div>
                </h5>
                <br>

                <ul class="collapsible" data-collapsible="expandable">
                    <li>
                        <div class="collapsible-header active brown-text text-darken-1">
                            <i class="material-icons">filter_drama</i>Manhã
                        </div>
                        <div class="collapsible-body"><span>Lorem ipsum dolor sit amet.</span></div>
                    </li>
                    <li>
                        <div class="collapsible-header active brown-text text-darken-1"><i class="material-icons">wb_sunny</i>Tarde</div>
                        <div class="collapsible-body"><span>Lorem ipsum dolor sit amet.</span></div>
                    </li>
                    <li>
                        <div class="collapsible-header active brown-text text-darken-1"><i class="material-icons inverse-icon">brightness_3</i>Noite</div>
                        <div class="collapsible-body"><span>Lorem ipsum dolor sit amet.</span></div>
                    </li>
                </ul>

            </div>
        </main>   <!-- ./conteudo -->
        <br>

        <!-- RODAPE -->
        <c:import url="rodape.jsp" />

        <script type="text/javascript" src="<c:url value='/resources/js/jquery-2.1.1.min.js'/>"></script>
        <script type="text/javascript" src="<c:url value='/resources/js/materialize.min.js'/>"></script>
    </body>
</html>
