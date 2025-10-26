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
                    <label for="txtDireccion" class="input__label">Dirección</label>
                    <input type="txt" class="form-control input-style" id="txtDireccion"
                        placeholder="Dirección del Hotel" maxlength="500" required">
                </div>
                <div class="form-group col-md-6">
                    <label for="txtTelefono" class="input__label">Teléfono</label>
                    <input type="number" class="form-control input-style" id="txtTelefono"
                        placeholder="Teléfono del Hotel" required="" min="0" max="99999999" maxlenght="8">
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="txtEmail" class="input__label">Correo</label>
                    <input type="email" class="form-control input-style" id="txtEmail"
                        placeholder="Correo del Hotel" required="" maxlenght="50">
                </div>
                <div class="form-group col-md-6">
                    <label for="txtPaginaWeb" class="input__label">Página Web</label>
                    <input type="text" class="form-control input-style" id="txtPaginaWeb"
                        placeholder="Página Web de Hotel" maxlength="50" required="">
                </div>
            </div>
            <div class="form-row">
                    <div class="form-group col-md-6">
                    <label for="txtAreaConstruccion" class="input__label">Área Construcción </label>
                    <input type="number" class="form-control input-style" id="txtAreaConstruccion"
                        placeholder="Área de construcción del Hotel" required="" min="0" max="100000">
                </div>

                 <div class="form-group col-md-6">
                    <label for="txtFechaConstruccion" class="input__label">Fecha Constucción</label>
                    <input type="date" class="form-control input-style" id="txtFechaConstruccion" min="1900-01-01" max="2100-01-01"
                        required="">
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
 