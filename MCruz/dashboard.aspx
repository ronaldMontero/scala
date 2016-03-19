﻿<%@ Page Title="" Language="C#" MasterPageFile="~/dummy.Master" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="dummyMP.dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="phCompania" runat="server">
    <!-- Extraer compañía de bd -->
    Miguel Cruz y Asociados Ltda.
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="phDatosUsuario" runat="server">
    <a href="dasboard.aspx"><img src="imgs/profile.jpg" class="img-circle m-b" alt="logo"/></a>
    <p class="userName">Nombre Apellido </p>
    <p>Administrador</p>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="phMenu" runat="server">
    <ul class="nav" id="side-menu">
        <li class="active"><a href="dashboard.aspx">Panel de control</a></li>
        <li><a href="#">Clientes</a></li>
        <li>
            <a href="#">
                <span class="nav-label">Proyectos</span>
                <span class="fa arrow"></span> 
            </a>
            <ul class="nav nav-second-level collapse in" aria-expanded="true">
                <li><a href="#">Estado General</a></li>
                <li><a href="#">Listado de Proyectos</a></li>
                <li><a href="#">Archivo</a></li>
            </ul>
        <li><a href="#">Usuarios</a></li>
        <li><a href="#">Facturación</a></li>
    </ul>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="phTituloContenido" runat="server">
    <div class="normalheader transition animated fadeIn small-header">
    <div class="hpanel">
        <div class="panel-body">
            <div id="hbreadcrumb" class="pull-right">
                <ol class="hbreadcrumb breadcrumb">
                    <li><a href="dashboard.aspx">Panel de Control</a></li>
                </ol>
            </div>
            <h2 class="font-light m-b-xs">
                Panel de Control
            </h2>
            <small>Estado General de la empresa</small>
        </div>
    </div>
</div>
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="phContenido" runat="server">
    <div class="content animate-panel">
        <div class="row projects">
            <div class="col-lg-6">
                <div class="hpanel hgreen">
                    <div class="panel-body">
                        <span class="label label-success pull-right">NEW</span>
                        <div class="row">
                            <div class="col-sm-8">
                                <h4><a href=""> Proyectos</a></h4>

                                <p>
                                    It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has..
                                </p>

                                <div class="row">
                                    <div class="col-sm-3">
                                        <div class="project-label">CLIENT</div>
                                        <small>Hendrix Corp</small>
                                    </div>
                                    <div class="col-sm-3">
                                        <div class="project-label">VERSION</div>
                                        <small>1.5.2</small>
                                    </div>
                                    <div class="col-sm-3">
                                        <div class="project-label">DEDLINE</div>
                                        <small>12.06.2015</small>
                                    </div>
                                    <div class="col-sm-3">
                                        <div class="project-label">PROGRESS</div>
                                        <div class="progress m-t-xs full progress-small">
                                            <div style="width: 12%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="12" role="progressbar" class=" progress-bar progress-bar-success">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-4 project-info">
                                <div class="project-action m-t-md">
                                    <div class="btn-group">
                                        <button class="btn btn-xs btn-default"> View</button>
                                        <button class="btn btn-xs btn-default"> Edit</button>
                                        <button class="btn btn-xs btn-default"> Delete</button>
                                    </div>
                                </div>
                                <div class="project-value">
                                    <h2 class="text-success">
                                        $1 206,40
                                    </h2>
                                </div>
                                <div class="project-people">
                                    <img alt="logo" class="img-circle" src="images/a1.jpg">
                                    <img alt="logo" class="img-circle" src="images/a2.jpg">
                                    <img alt="logo" class="img-circle" src="images/a3.jpg">
                                    <img alt="logo" class="img-circle" src="images/a4.jpg">
                                    <img alt="logo" class="img-circle" src="images/a5.jpg">
                                    <img alt="logo" class="img-circle" src="images/a6.jpg">
                                    <img alt="logo" class="img-circle" src="images/a7.jpg">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="panel-footer">
                        Additional information about project in footer
                    </div>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="hpanel hyellow">
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-sm-8">
                                <h4><a href=""> Project manager app</a></h4>
                                <p>
                                    It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum..
                                </p>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <div class="project-label">CLIENT</div>
                                        <small>Vito Company</small>
                                    </div>
                                    <div class="col-sm-3">
                                        <div class="project-label">VERSION</div>
                                        <small>3.0.0</small>
                                    </div>
                                    <div class="col-sm-3">
                                        <div class="project-label">DEDLINE</div>
                                        <small>16.10.2015</small>
                                    </div>
                                    <div class="col-sm-3">
                                        <div class="project-label">PROGRESS</div>
                                        <div class="progress m-t-xs full progress-small">
                                            <div style="width: 65%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="65" role="progressbar" class=" progress-bar progress-bar-warning">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-4 project-info">
                                <div class="project-action m-t-md">
                                    <div class="btn-group">
                                        <button class="btn btn-xs btn-default"> View</button>
                                        <button class="btn btn-xs btn-default"> Edit</button>
                                        <button class="btn btn-xs btn-default"> Delete</button>
                                    </div>
                                </div>
                                <div class="project-value">
                                    <h2 class="text-warning">
                                        $3 600,20
                                    </h2>
                                </div>
                                <div class="project-people">
                                    <img alt="logo" class="img-circle" src="images/a7.jpg">
                                    <img alt="logo" class="img-circle" src="images/a8.jpg">
                                    <img alt="logo" class="img-circle" src="images/a3.jpg">
                                    <img alt="logo" class="img-circle" src="images/a2.jpg">
                                    <img alt="logo" class="img-circle" src="images/a5.jpg">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="panel-footer">
                        Additional information about project in footer
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

 