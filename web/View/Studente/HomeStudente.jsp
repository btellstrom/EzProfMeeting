<%@ page import="java.util.Collection" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="myJava.model.beans.Professore" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../General/Header.jsp"%>



<html>
<head>

    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link rel="stylesheet" type="text/css" href="../CSS/profiloStudente.css">
    <!------ Include the above in your HEAD tag ---------->
</head>
<body id="StudenteForm">




<div class="divStudente">

    <div class="nav-side-menu navsidemenu">
        <div class="brand">Studente</div>
        <i class="fa fa-bars fa-2x toggle-btn" data-toggle="collapse" data-target="#menu-content"></i>

        <div class="menu-list">

            <ul id="menu-content" class="menu-content collapse out">
                <li>
                    <a href="#">
                        <i class="fa fa-dashboard fa-lg"></i> Visualizza Prenotazione
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class="fa fa-dashboard fa-lg"></i> Messaggi
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class="fa fa-dashboard fa-lg"></i> Aiuto
                    </a>
                </li>
            </ul>
        </div>
    </div>


    <div class="containerA">
        <div class="container">
            <h2 style="margin-left:10%">Lista Professori</h2>
            <br>
            <!-- contacts card -->
            <div class="card card-default" id="card_contacts">
                <div id="contacts" class="panel-collapse collapse show" aria-expanded="true" style="">
                    <ul class="list-group pull-down" id="contact-list">


                        <%
                            if(professori!=null && professori.size()!=0){
                                int i=0;
                                int count=0;
                                Iterator<?> it = professori.iterator();									//Scorre gli oggetti
                                while(it.hasNext() ){
                                    Professore bean = (Professore) it.next();						//scorro i bean
                        %>

                        <li class="list-group-item" id="<%=count%>">
                            <div class="row w-100">

                                <div class="col-12 col-sm-6 col-md-3 px-0">
                                    <img src="image/<%=bean.getNomeProfessore()%>.jpg" alt="http://demos.themes.guide/bodeo/assets/images/users/m101.jpg" alt="Mike Anamendolla" class="rounded-circle mx-auto d-block img-fluid">
                                </div>

                                <div class="col-12 col-sm-6 col-md-9 text-center text-sm-left">
                                    <span class="fa fa-mobile fa-2x text-success float-right pulse" title="online now"></span>
                                    <label class="name lead"><%=bean.getNomeProfessore()%> <%=bean.getCognomeProfessore()%></label>
                                    <br>
                                    <span class="fa fa-map-marker fa-fw text-muted" data-toggle="tooltip" title="" data-original-title="5842 Hillcrest Rd"></span>
                                    <span class="text-muted"><%=bean.getUfficioProfessore()%></span>
                                    <br>
                                    <span class="fa fa-envelope fa-fw text-muted" data-toggle="tooltip" data-original-title="" title=""></span>
                                    <span class="text-muted small text-truncate"><%=bean.getTelefonoProfessore()%> <%=bean.getEmailProfessore()%>%></span>
                                </div>
                            </div>
                        </li>


                    </ul>
                    <!--/contacts list-->
                </div>
            </div>
        </div>
    </div>


</div>
</body>
</html>
