<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="dummyMP.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="css/main.css" rel="stylesheet" />
    <link href="css/lib/bootstrap.css" rel="stylesheet" />
    <link href='https://fonts.googleapis.com/css?family=Roboto' rel='stylesheet' type='text/css'/>
</head>
<body>
    <form id="form1" runat="server">
    <header>
        <div id="logo">
            <span>
                Sistema de Control Administrativo
            </span>
        </div>
    </header>
    <div id="color-line"></div>
    <main>
        <div class="login-container">
            <div class="col-md-12">
                <div class="text-center m-b-md">
                    <h3>Ingreso a SCA-LA.</h3>
                    <small>Utilice el usuario y password asignados a su persona para ingresar.</small>
                </div>
                <div class="hpanel">
                    <div class="panel-body">
                                <div class="form-group">
                                    <label class="control-label" for="username">Usuario</label>
                                    <input type="text" placeholder="nombre.apellido" title="Por favor ingrtese su usuario" required="" value="" name="username" id="username" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label class="control-label" for="password">Password</label>
                                    <input type="password" title="Please enter your password" placeholder="******" required="" value="" name="password" id="password" class="form-control">
                                </div>
                                <button class="btn btn-success btn-block">Ingresar</button>
                                <button class="btn btn-danger btn-block">Limpiar</button>
                    </div>
                </div>
            </div>    
        </div>
    </main>
    </form>
</body>
</html>
