using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MCruzDatos;
using System.Data;
using System.Data.SqlClient;


namespace MCruzNegocio
{
    public class ClsProveedores
    {
        private ClsDatos cpr = new ClsDatos();

        #region Definicion de atributos
        //Atributos
        private int cpr_ID_Proveedor;
        private int cpr_Num_factura;
        private string cpr_Descripcion_Factura;
        private string cpr_Estado;
        private string cpr_Tipo_Pago;
        private float cpr_Monto_Factura;
        private float cpr_Monto_Ultimo_Pago;
        private DateTime cpr_Fecha_Ultimo_Pago;
        private int cpr_ID_Producto;
        private string cpr_Descripcion_Producto;
        private int cpr_Cantidad_Producto;
        private DateTime cpr_Fecha_Entrega_Provision;
        private DateTime cpr_Fecha_Vencimiento_Provision;
        private int cpr_ID_Empresa;
        private int cpr_ID_Persona;
        private string cpr_Puesto_Proveedor;
        private int cpr_cedula;
        private string cpr_nombre;
        private string cpr_apellido1;
        private string cpr_apellido2;
        private string cpr_email1;
        private string cpr_email2;
        private string cpr_Tel1;
        private string cpr_Tel2;
        private string cpr_Tel3;
        private string cpr_dir1;
        private string cpr_dir2;
        private string cpr_nombre_producto;

        #endregion

        #region Definicion de Propiedades
        //Propiedades
        public int Cpr_ID_Proveedor
        {
            get
            {
                return cpr_ID_Proveedor;
            }

            set
            {
                cpr_ID_Proveedor = value;
            }
        }

        public int Cpr_Num_factura
        {
            get
            {
                return cpr_Num_factura;
            }

            set
            {
                cpr_Num_factura = value;
            }
        }

        public string Cpr_Descripcion_Factura
        {
            get
            {
                return cpr_Descripcion_Factura;
            }

            set
            {
                cpr_Descripcion_Factura = value;
            }
        }

        public string Cpr_Estado
        {
            get
            {
                return cpr_Estado;
            }

            set
            {
                cpr_Estado = value;
            }
        }

        public string Cpr_Tipo_Pago
        {
            get
            {
                return cpr_Tipo_Pago;
            }

            set
            {
                cpr_Tipo_Pago = value;
            }
        }

        public float Cpr_Monto_Factura
        {
            get
            {
                return cpr_Monto_Factura;
            }

            set
            {
                cpr_Monto_Factura = value;
            }
        }

        public float Cpr_Monto_Ultimo_Pago
        {
            get
            {
                return cpr_Monto_Ultimo_Pago;
            }

            set
            {
                cpr_Monto_Ultimo_Pago = value;
            }
        }

        public DateTime Cpr_Fecha_Ultimo_Pago
        {
            get
            {
                return cpr_Fecha_Ultimo_Pago;
            }

            set
            {
                cpr_Fecha_Ultimo_Pago = value;
            }
        }

        public int Cpr_ID_Producto
        {
            get
            {
                return cpr_ID_Producto;
            }

            set
            {
                cpr_ID_Producto = value;
            }
        }

        public string Cpr_Descripcion_Producto
        {
            get
            {
                return cpr_Descripcion_Producto;
            }

            set
            {
                cpr_Descripcion_Producto = value;
            }
        }

        public int Cpr_Cantidad_Producto
        {
            get
            {
                return cpr_Cantidad_Producto;
            }

            set
            {
                cpr_Cantidad_Producto = value;
            }
        }

        public DateTime Cpr_Fecha_Entrega_Provision
        {
            get
            {
                return cpr_Fecha_Entrega_Provision;
            }

            set
            {
                cpr_Fecha_Entrega_Provision = value;
            }
        }

        public DateTime Cpr_Fecha_Vencimiento_Provision
        {
            get
            {
                return cpr_Fecha_Vencimiento_Provision;
            }

            set
            {
                cpr_Fecha_Vencimiento_Provision = value;
            }
        }

        public int Cpr_ID_Empresa
        {
            get
            {
                return cpr_ID_Empresa;
            }

            set
            {
                cpr_ID_Empresa = value;
            }
        }

        public int Cpr_ID_Persona
        {
            get
            {
                return cpr_ID_Persona;
            }

            set
            {
                cpr_ID_Persona = value;
            }
        }

        public string Cpr_Puesto_Proveedor
        {
            get
            {
                return cpr_Puesto_Proveedor;
            }

            set
            {
                cpr_Puesto_Proveedor = value;
            }
        }

        public int Cpr_cedula
        {
            get
            {
                return cpr_cedula;
            }

            set
            {
                cpr_cedula = value;
            }
        }

        public string Cpr_nombre
        {
            get
            {
                return cpr_nombre;
            }

            set
            {
                cpr_nombre = value;
            }
        }

        public string Cpr_apellido1
        {
            get
            {
                return cpr_apellido1;
            }

            set
            {
                cpr_apellido1 = value;
            }
        }

        public string Cpr_apellido2
        {
            get
            {
                return cpr_apellido2;
            }

            set
            {
                cpr_apellido2 = value;
            }
        }

        public string Cpr_email1
        {
            get
            {
                return cpr_email1;
            }

            set
            {
                cpr_email1 = value;
            }
        }

        public string Cpr_email2
        {
            get
            {
                return cpr_email2;
            }

            set
            {
                cpr_email2 = value;
            }
        }

        public string Cpr_Tel1
        {
            get
            {
                return cpr_Tel1;
            }

            set
            {
                cpr_Tel1 = value;
            }
        }

        public string Cpr_Tel2
        {
            get
            {
                return cpr_Tel2;
            }

            set
            {
                cpr_Tel2 = value;
            }
        }

        public string Cpr_Tel3
        {
            get
            {
                return cpr_Tel3;
            }

            set
            {
                cpr_Tel3 = value;
            }
        }

        public string Cpr_dir1
        {
            get
            {
                return cpr_dir1;
            }

            set
            {
                cpr_dir1 = value;
            }
        }

        public string Cpr_dir2
        {
            get
            {
                return cpr_dir2;
            }

            set
            {
                cpr_dir2 = value;
            }
        }

        public string Cpr_nombre_producto
        {
            get
            {
                return cpr_nombre_producto;
            }

            set
            {
                cpr_nombre_producto = value;
            }
        }
        #endregion

        #region Metodos Factura

        public DataTable VerClientesTodasFacturas()
        {
            List<ClsParametro> lst = new List<ClsParametro>();

            try
            {
                lst.Add(new ClsParametro("@num_factura", "*"));

            }
            catch (Exception)
            {
                throw;
            }
            return cpr.Listado("sp_ListarTodasLasFacturas", lst);
        }
        public DataTable VerClientesPorFactura()
        {
            List<ClsParametro> lst = new List<ClsParametro>();

            try
            {
                lst.Add(new ClsParametro("@num_factura", Cpr_Num_factura));

            }
            catch (Exception)
            {
                throw;
            }
            return cpr.Listado("sp_ListarFacturasPorFactura", lst);
        }

        public String RegistrarFactura()
        {
            //SqlCommand cmd;
            List<ClsParametro> lst = new List<ClsParametro>();
            string Mensaje = "";
            try
            {
                //Pasamos parametros de entrada;
                lst.Add(new ClsParametro("@id_empresa", cpr_ID_Empresa));
                lst.Add(new ClsParametro("@descripcion_factura", Cpr_Descripcion_Factura));
                lst.Add(new ClsParametro("@estado", cpr_Estado));
                lst.Add(new ClsParametro("@tipo_pago", cpr_Tipo_Pago));
                lst.Add(new ClsParametro("@monto", Cpr_Monto_Factura));
                lst.Add(new ClsParametro("@fecha_ultimo_pago", DateTime.Now));
                lst.Add(new ClsParametro("@monto_ultimo_pago", Cpr_Monto_Ultimo_Pago));
                //pasamos datos de salida
                //lst.Add(new ClsParametro("@Mensaje")) se maneja "out" a nivel de SP;
                cpr.EjecutarSP("sp_IngresarFactura", ref lst);
                Mensaje = lst[4].Valor.ToString();
            }
            catch (Exception)
            {
                throw;
            }
            return Mensaje;
        }
        public String ModificarFactura()
        {
            //SqlCommand cmd;
            List<ClsParametro> lst = new List<ClsParametro>();
            string Mensaje = "";
            try
            {
                //Pasamos parametros de entrada;
                lst.Add(new ClsParametro("@num_factura", Cpr_Num_factura));
                lst.Add(new ClsParametro("@id_empresa", cpr_ID_Empresa));
                lst.Add(new ClsParametro("@descripcion_factura", Cpr_Descripcion_Factura));
                lst.Add(new ClsParametro("@estado", cpr_Estado));
                lst.Add(new ClsParametro("@tipo_pago", cpr_Tipo_Pago));
                lst.Add(new ClsParametro("@monto", Cpr_Monto_Factura));
                lst.Add(new ClsParametro("@monto_ultimo_pago", Cpr_Monto_Ultimo_Pago));
                lst.Add(new ClsParametro("@fecha_ultimo_pago", cpr_Fecha_Ultimo_Pago));



                //pasamos datos de salida
                //lst.Add(new ClsParametro("@Mensaje")) se maneja "out" a nivel de SP;
                cpr.EjecutarSP("sp_ModificarFactura", ref lst);
                Mensaje = lst[7].Valor.ToString();
            }
            catch (Exception)
            {
                throw;
            }
            return Mensaje;
        }
        public DataTable VerModFactura()
        {
            List<ClsParametro> lst = new List<ClsParametro>();

            try
            {
                lst.Add(new ClsParametro("@num_factura", cpr_Num_factura));

            }
            catch (Exception)
            {
                throw;
            }
            return cpr.Listado("sp_BuscarModFactura", lst);
        }

        public String BorrarFactura()
        {
            //SqlCommand cmd;
            List<ClsParametro> lst = new List<ClsParametro>();
            string Mensaje = "";
            try
            {
                //Pasamos parametros de entrada;
                lst.Add(new ClsParametro("@num_factura", cpr_Num_factura));
                //pasamos datos de salida
                //lst.Add(new ClsParametro("@Mensaje")) se maneja "out" a nivel de SP;
                Mensaje = cpr.Listado("sp_BorrarFactura", lst).Rows[0][0].ToString();
                //Mensaje = lst[0].Valor.ToString();
            }
            catch (Exception)
            {
                throw;
            }
            return Mensaje;
        }
        #endregion

        #region Metodos Proveedores

        public DataTable BuscarPersona()
        {
            List<ClsParametro> lst = new List<ClsParametro>();

            try
            {
                lst.Add(new ClsParametro("@nombre_proveedor", cpr_nombre));

            }
            catch (Exception)
            {
                throw;
            }
            return cpr.Listado("sp_ListarPersonaPorNombre", lst);
        }
        public String RegistrarUsuario()
        {
            //SqlCommand cmd;
            List<ClsParametro> lst = new List<ClsParametro>();
            string Mensaje = "";
            try
            {
                //Pasamos parametros de entrada;
                lst.Add(new ClsParametro("@Cedula", cpr_cedula));
                lst.Add(new ClsParametro("@Nombre", cpr_nombre));
                lst.Add(new ClsParametro("@Apellido1", cpr_apellido1));
                lst.Add(new ClsParametro("@Apellido2", Cpr_apellido2));
                lst.Add(new ClsParametro("@Email1", cpr_email1));
                lst.Add(new ClsParametro("@Email2", cpr_email2));
                lst.Add(new ClsParametro("@Telefono1", cpr_Tel1));
                lst.Add(new ClsParametro("@Telefono2", Cpr_Tel2));
                lst.Add(new ClsParametro("@Telefono3", Cpr_Tel3));
                lst.Add(new ClsParametro("@Direccion1", Cpr_dir1));
                lst.Add(new ClsParametro("@Direccion2", cpr_dir2));
                lst.Add(new ClsParametro("@id_empresa", cpr_ID_Empresa));
                lst.Add(new ClsParametro("@Puesto_proveedor", cpr_Puesto_Proveedor));

                //pasamos datos de salida
                //lst.Add(new ClsParametro("@Mensaje")) se maneja "out" a nivel de SP;
               Mensaje = cpr.Listado("sp_IngresarProveedor", lst).Rows[0][0].ToString();
                //Mensaje = lst[12].Valor.ToString();
            }
            catch (Exception)
            {
                throw;
            }
            return Mensaje;
        }

        public DataTable VerModPersona()
        {
            List<ClsParametro> lst = new List<ClsParametro>();

            try
            {
                lst.Add(new ClsParametro("@Cedula", Cpr_cedula));

            }
            catch (Exception)
            {
                throw;
            }
            return cpr.Listado("sp_BuscarModPersona", lst);
        }

        public String ModificarProveedores()
        {
            //SqlCommand cmd;
            List<ClsParametro> lst = new List<ClsParametro>();
            string Mensaje = "";
            try
            {
                //Pasamos parametros de entrada;

                lst.Add(new ClsParametro("@Cedula", cpr_cedula));
                lst.Add(new ClsParametro("@Nombre", cpr_nombre));
                lst.Add(new ClsParametro("@Apellido1", cpr_apellido1));
                lst.Add(new ClsParametro("@Apellido2", Cpr_apellido2));
                lst.Add(new ClsParametro("@Email1", cpr_email1));
                lst.Add(new ClsParametro("@Email2", cpr_email2));
                lst.Add(new ClsParametro("@Telefono1", cpr_Tel1));
                lst.Add(new ClsParametro("@Telefono2", Cpr_Tel2));
                lst.Add(new ClsParametro("@Telefono3", Cpr_Tel3));
                lst.Add(new ClsParametro("@Direccion1", Cpr_dir1));
                lst.Add(new ClsParametro("@Direccion2", cpr_dir2));
                lst.Add(new ClsParametro("@id_empresa", cpr_ID_Empresa));
                lst.Add(new ClsParametro("@Puesto_proveedor", cpr_Puesto_Proveedor));
                lst.Add(new ClsParametro("@id_persona", cpr_ID_Persona));


                //pasamos datos de salida
                //lst.Add(new ClsParametro("@Mensaje")) se maneja "out" a nivel de SP;
                cpr.EjecutarSP("sp_ModificarPersona", ref lst);
                Mensaje = lst[12].Valor.ToString();
            }
            catch (Exception)
            {
                throw;
            }
            return Mensaje;
        }

        public String BorrarPersona()
        {
            //SqlCommand cmd;
            List<ClsParametro> lst = new List<ClsParametro>();
            string Mensaje = "";
            try
            {
                //Pasamos parametros de entrada;
                lst.Add(new ClsParametro("@id_persona", cpr_ID_Persona));
                //pasamos datos de salida
                //lst.Add(new ClsParametro("@Mensaje")) se maneja "out" a nivel de SP;
                Mensaje = cpr.Listado("sp_BorrarPersona", lst).Rows[0][0].ToString();
                //Mensaje = lst[0].Valor.ToString();
            }
            catch (Exception)
            {
                throw;
            }
            return Mensaje;
        }
        #endregion

        #region Metodos Producto
        public String RegistrarProducto()
        {
            //SqlCommand cmd;
            List<ClsParametro> lst = new List<ClsParametro>();
            string Mensaje = "";
            try
            {
                //Pasamos parametros de entrada;
                lst.Add(new ClsParametro("@Nombre_Producto", cpr_nombre_producto));
                lst.Add(new ClsParametro("@Descripcion_Producto", Cpr_Descripcion_Producto));
                lst.Add(new ClsParametro("@Cantidad_Producto", cpr_Cantidad_Producto));
                lst.Add(new ClsParametro("@Fecha_entrega", cpr_Fecha_Entrega_Provision));
                lst.Add(new ClsParametro("@Fecha_caducidad", cpr_Fecha_Vencimiento_Provision));
                lst.Add(new ClsParametro("@ID_Empresa", cpr_ID_Empresa));


                //pasamos datos de salida
                //lst.Add(new ClsParametro("@Mensaje")) se maneja "out" a nivel de SP;
                cpr.EjecutarSP("sp_RegistrarProducto", ref lst);
                Mensaje = lst[5].Valor.ToString();
            }
            catch (Exception)
            {
                throw;
            }
            return Mensaje;
        }
        public String BorrarProducto()
        {
            //SqlCommand cmd;
            List<ClsParametro> lst = new List<ClsParametro>();
            string Mensaje = "";
            try
            {
                //Pasamos parametros de entrada;
                lst.Add(new ClsParametro("@id_producto", Cpr_ID_Producto));
                //pasamos datos de salida
                //lst.Add(new ClsParametro("@Mensaje")) se maneja "out" a nivel de SP;
                Mensaje = cpr.Listado("sp_BorrarProducto", lst).Rows[0][0].ToString();
                //Mensaje = lst[0].Valor.ToString();
            }
            catch (Exception)
            {
                throw;
            }
            return Mensaje;

        }
      
        public DataTable VerModProducto()
        {
            List<ClsParametro> lst = new List<ClsParametro>();

            try
            {
                lst.Add(new ClsParametro("@id_producto", cpr_ID_Producto));

            }
            catch (Exception)
            {
                throw;
            }
            return cpr.Listado("sp_BuscarModProducto", lst);
        }

        public String ModificarProducto()
        {
            //SqlCommand cmd;
            List<ClsParametro> lst = new List<ClsParametro>();
            string Mensaje = "";
            try
            {
                //Pasamos parametros de entrada;
                lst.Add(new ClsParametro("@id_producto", Cpr_ID_Producto));
                lst.Add(new ClsParametro("@nombre_producto", cpr_nombre_producto));
                lst.Add(new ClsParametro("@descripcion_producto", Cpr_Descripcion_Producto));
                lst.Add(new ClsParametro("@cantidad_producto", Cpr_Cantidad_Producto));
                lst.Add(new ClsParametro("@Fecha_entrega", cpr_Fecha_Entrega_Provision));
                lst.Add(new ClsParametro("@Fecha_Caducidad", cpr_Fecha_Vencimiento_Provision));
                lst.Add(new ClsParametro("@ID_empresa", Cpr_ID_Empresa));

                //pasamos datos de salida
                //lst.Add(new ClsParametro("@Mensaje")) se maneja "out" a nivel de SP;
                cpr.EjecutarSP("sp_ModificarProducto", ref lst);
                Mensaje = lst[6].Valor.ToString();
            }
            catch (Exception)
            {
                throw;
            }
            return Mensaje;
        }
        #endregion
    }
}
