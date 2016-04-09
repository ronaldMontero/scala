﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MCruzNegocio;

namespace MCruz
{
    public partial class Autorizado : System.Web.UI.Page
    {
   

        protected void Page_Load(object sender, EventArgs e)
        {
            ClsSeguridad user = (ClsSeguridad)HttpContext.Current.User;
            if (!user.IsActionEnabled("Eliminar Proveedor"))
                btnEliminarProveedor.Visible = false;
            if (!user.IsActionEnabled("Crear Proveedor"))
                btnCrearProveedor.Visible = false;
            if (!user.IsActionEnabled("Actualizar Proveedor"))
                btnActualizarProveedor.Visible = false;
            if (!user.IsActionEnabled("Listar Proveedor"))
                btnListarProveedor.Visible = false;
        }
    }
} 