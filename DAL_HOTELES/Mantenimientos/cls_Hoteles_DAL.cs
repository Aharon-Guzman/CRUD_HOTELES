using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL_HOTELES.Mantenimientos
{
    public class cls_Hoteles_DAL
    {
        #region Variables Privadas
        //Sección de campos de la tabla
        private int _iCodigo_Hotel, _iArea_Construccion;
        private string _sDescripcion_Hotel, _sTelefono, _sCorreo, _sPagina_Web, _sDireccion_Fisica, _sEstado;
        private DateTime _dFecha_Construccion;
        //Sección de campos de la tabla

        //Sección presente en todas las clases 
        private string _sValorScalar, _sAXN, _sMSJError;
        private DataTable _dtDatos, _dtParametros;
        private int _iIdUsuarioGlobal;
        //Sección presente en todas las clases 
        #endregion

        #region Variables Públicas o Constructores
        public int iCodigo_Hotel { get => _iCodigo_Hotel; set => _iCodigo_Hotel = value; }
        public int iArea_Construccion { get => _iArea_Construccion; set => _iArea_Construccion = value; }
        public string sDescripcion_Hotel { get => _sDescripcion_Hotel; set => _sDescripcion_Hotel = value; }
        public string sTelefono { get => _sTelefono; set => _sTelefono = value; }
        public string sCorreo { get => _sCorreo; set => _sCorreo = value; }
        public string sPagina_Web { get => _sPagina_Web; set => _sPagina_Web = value; }
        public string sDireccion_Fisica { get => _sDireccion_Fisica; set => _sDireccion_Fisica = value; }
        public string sEstado { get => _sEstado; set => _sEstado = value; }
        public DateTime dFecha_Construccion { get => _dFecha_Construccion; set => _dFecha_Construccion = value; }
        public string sValorScalar { get => _sValorScalar; set => _sValorScalar = value; }
        public string sAXN { get => _sAXN; set => _sAXN = value; }
        public string sMSJError { get => _sMSJError; set => _sMSJError = value; }
        public DataTable dtDatos { get => _dtDatos; set => _dtDatos = value; }
        public DataTable dtParametros { get => _dtParametros; set => _dtParametros = value; }
        public int iIdUsuarioGlobal { get => _iIdUsuarioGlobal; set => _iIdUsuarioGlobal = value; }
        #endregion
    }
}
