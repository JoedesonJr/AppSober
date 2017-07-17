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
    <body class="background-body" ng-controller="soberCtrl">

        <!-- MENU -->
        <header>
            <nav>
                <div class="nav-wrapper background-brand">
                    <!-- LOGO SOBER -->
                    <a href="#" class="brand-logo right margin-brand">
                        <img class="responsive-img margin-logo" src="<c:url value='/resources/img/logo-sober.png'/>" width="75">
                    </a>

                    <ul id="nav-mobile" class="left">
                        <li><a class="brown-text text-darken-1" href="#">
                            <i class="material-icons left">keyboard_arrow_right</i>
                            <strong>Programação Sober</strong></a>
                        </li>
                    </ul>
                </div>
            </nav>
        </header>   <!-- ./menu -->

        <!-- CONTEUDO -->
        <main>
            <div class="container">
                <br>
                <!-- SOBER -->
                <div class="center-align">
                    <img class="responsive-img" src="<c:url value='/resources/img/info-sober.png'/>">
                </div>

                <br><br class="hide-on-small-only">

                <div class="row">
                    <div class="input-field col s12">
                        <input id="last_name" type="text">
                        <label for="last_name">Faça uma Busca</label>
                    </div>
                </div>
                <br class="hide-on-small-only">

                <ul class="collapsible" data-collapsible="accordion">
                    <!-- PROGRAMAÇÃO POR DIA -->
                    <li>
                        <div class="collapsible-header brown-text text-darken-1 background-body">
                            <i class="material-icons">date_range</i> Programação por dia
                        </div>
                        <div class="collapsible-body">
                            <!-- DIAS -->
                            <ul class="collapsible" data-collapsible="accordion">
                                <li class="collapsible-header" ng-repeat="diaEvento in diasEvento">
                                    <a class="brown-text text-darken-1" href="programacao/dia?d={{diaEvento}}">
                                        <i class="material-icons">event</i>{{diaEvento}}
                                    </a>
                                </li>
                            </ul>   <!-- ./dias -->
                        </div>
                    </li>   <!-- ./programacao por dia -->

                    <!-- APRESENTAÇÃO DE TRABALHOS -->
                    <li>
                        <div class="collapsible-header brown-text text-darken-1 background-body">
                            <i class="material-icons">assignment_ind</i> Apresentação de Trabalhos
                        </div>
                        <div class="collapsible-body">
                            <ul class="collapsible" data-collapsible="accordion">
                                <!-- GRUPO -->
                                <li class="collapsible-header">
                                    <a class="brown-text text-darken-1" href="#">
                                        <i class="material-icons">assignment_ind</i>Grupo de Trabalho
                                    </a>
                                </li>
                                <!-- POSTER -->
                                <li class="collapsible-header">
                                    <a class="brown-text text-darken-1" href="#">
                                        <i class="material-icons">assignment</i>Sessão Pôster</a>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </li>
                    <!-- PAINEIS -->
                    <li>
                        <div class="collapsible-header background-body">
                            <a class="brown-text text-darken-1" href="#"><i class="material-icons">chrome_reader_mode</i>Painéis</a>
                        </div>
                    </li>
                    <!-- SESSOES ORGANIZADAS -->
                    <li>
                        <div class="collapsible-header background-body">
                            <a class="brown-text text-darken-1" href="#"><i class="material-icons">group</i>Sessões Organizadas</a>
                        </div>
                    </li>
                    <!-- MINICURSOS -->
                    <li>
                        <div class="collapsible-header background-body">
                            <a class="brown-text text-darken-1" href="#"><i class="material-icons">event_note</i>Minicursos</a>
                        </div>
                    </li>
                </ul>

            </div>
        </main>   <!-- ./conteudo -->

        <!-- RODAPE -->
        <c:import url="rodape.jsp" />

        <script type="text/javascript" src="<c:url value='/resources/js/jquery-2.1.1.min.js'/>"></script>
        <script type="text/javascript" src="<c:url value='/resources/js/materialize.min.js'/>"></script>
    </body>
</html>
