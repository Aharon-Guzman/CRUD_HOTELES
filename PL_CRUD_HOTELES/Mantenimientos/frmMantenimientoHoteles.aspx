<%@ Page Title="" Language="C#" MasterPageFile="~/Mantenimientos/frmPrincipalMaster.Master" AutoEventWireup="true" CodeBehind="frmMantenimientoHoteles.aspx.cs" Inherits="PL_CRUD_HOTELES.Mantenimientos.frmMantenimientoHoteles" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<nav aria-label="breadcrumb">
  <ol class="breadcrumb my-breadcrumb">
    <li class="breadcrumb-item"><a href="frmPrincipal.aspx">Inicio</a></li>
      <li class="breadcrumb-item"><a href="frmConsultaHoteles.aspx">Consulta de Hoteles</a></li>
    <li class="breadcrumb-item active" aria-current="page">Mantenimiento de Hoteles</li>
  </ol>
</nav>
<div class="welcome-msg pt-3 pb-4">
  <h1>Hola <span class="text-primary" id="nombreUsuario"></span>, Bienvenido</h1>
  <p id="emlUsuario"></p>
</div>

<div class="card card_border py-2 mb-4">
	<div class="cards__heading">
        <h3>Mantenimiento de Información de Hoteles <span></span></h3>
    </div>
    <div class="card-body">
        <form action="javascript: mantenimientoHotel()" method="post">
           <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="txtHotel" class="input__label">Hotel</label>
                    <input type="text" class="form-control input-style" id="txtHotel"
                        placeholder="Nombre de Hotel" maxlength="50" required="">
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="txtOfi" class="input__label">Direccion Física</label>
                    <input type="text" class="form-control input-style" id="txtOfi"
                        placeholder="Direccion" required="" min="0" max="100">
                </div>
                <div class="form-group col-md-6">
                    <label for="txtTel" class="input__label">Teléfono</label>
                    <input type="number" class="form-control input-style" id="txtTel"
                        placeholder="Teléfono del Hotel" required="" min="0" max="99999999" maxlenght="8">
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="txtEml" class="input__label">Correo</label>
                    <input type="email" class="form-control input-style" id="txtEml"
                        placeholder="Correo del Hotel" required="" maxlenght="50">
                </div>
                <div class="form-group col-md-6">
                    <label for="txtPagWeb" class="input__label">Pagina Web</label>
                    <input type="text" class="form-control input-style" id="txtPagWeb" placeholder="www.ejemplo.com"
                         required="">
                </div>
            </div>

                <div class="form-group col-md-6">
                    <label for="txtAreaConstruccion" class="input__label">Area Construccion</label>
                    <input type="number" class="form-control input-style" id="txtAreaConstruccion"
                        placeholder="Area Construccion" required="" min="0" max="99999999" maxlenght="8">
                </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="txtFecConst" class="input__label">Fecha de Contruccion</label>
                    <input type="date" class="form-control input-style" id="txtFecConst"
                        required="">
                </div>

            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="cboSts" class="input__label">Estado</label>
                    <select id="cboSts" class="form-control input-style">
                        <option value="A">Activo</option>
                        <option value="I">Inactivo</option>
                    </select>
                </div>
            </div>

            <button type="submit" class="btn btn-primary btn-style mt-4">Guardar</button>
            <button type="button" class="btn btn-primary btn-style mt-4" onclick="javascript: regresar()">Regresar</button>
        </form>
    </div>
</div>
    <script src="../JavaScript/Hoteles.js"></script>

</asp:Content>
