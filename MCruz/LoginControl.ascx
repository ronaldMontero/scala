<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="LoginControl.ascx.cs" Inherits="MCruz.LoginControl" %>
    <link href="css/main.css" rel="stylesheet" />
    <link href="css/lib/bootstrap.css" rel="stylesheet" />
    <link href='https://fonts.googleapis.com/css?family=Roboto' rel='stylesheet' type='text/css'/>
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
                        <asp:TextBox ID="txtUsername" runat="server" Cssclass="form-control"/>
                    </div>
                    <div class="form-group">
                        <label class="control-label" for="password">Password</label>
                        <asp:TextBox ID="txtPassword" runat="server" Cssclass="form-control" TextMode="Password"/>                     
                    </div>
                    <asp:Button ID="btnIngresar" runat="server" Text="Ingresar" Cssclass="btn btn-success btn-block" OnClick="btnIngresar_Click"  />
                    <asp:Button ID="btnLimpiar" runat="server" Text="Limpiar" Cssclass="btn btn-danger btn-block" OnClick="btnLimpiar_Click"  />
                </div>
            </div> 
        </div>    
     </div>
