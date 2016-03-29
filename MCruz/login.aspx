<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="dummyMP.login" %>

<%@ Register Src="~/LoginControl.ascx" TagPrefix="uc1" TagName="LoginControl" %>
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
                <uc1:LoginControl runat="server" ID="LoginControl" />
            </div>    
        </div>
    </main>
    </form>
</body>
</html>
