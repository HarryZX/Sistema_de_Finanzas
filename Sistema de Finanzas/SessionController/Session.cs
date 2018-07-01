using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SessionController
{
    public sealed class Session
    {
        private static volatile Session instance;
        private static object syncRoot = new Object();
        private Session() { }
        public static Session Instance
        {
            get
            {
                if (instance == null)
                {
                    lock (syncRoot)
                    {
                        if (instance == null)
                            instance = new Session();
                    }
                }

                return instance;
            }
        }

        //Personalizacion

        String _IdUsuario;
        String _Usuario;

        public string IdUsuario
        {
            get
            {
                return _IdUsuario;
            }
        }

        public string Usuario
        {
            get
            {
                return _Usuario;
            }
            set
            {
                _Usuario = value;
            }
        }

        public Boolean ValidarSesion(String pUsuario, String pCredencial)
        {
            Boolean Validado = false;
            DataTable Resultado = new DataTable();
        }
    }
}
