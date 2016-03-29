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

        public DataTable VerClientes()
        {
            return cpr.Listado("sp_ListarTest", null);
        }
    }
}
