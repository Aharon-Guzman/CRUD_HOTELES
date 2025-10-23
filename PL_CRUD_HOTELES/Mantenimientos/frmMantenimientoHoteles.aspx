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
                    <label for="txtOfi" class="input__label">Oficinas</label>
                    <input type="number" class="form-control input-style" id="txtOfi"
                        placeholder="Cantidad de Oficinas del Fabricante" required="" min="0" max="100">
                </div>
                <div class="form-group col-md-6">
                    <label for="txtTel" class="input__label">Teléfono</label>
                    <input type="number" class="form-control input-style" id="txtTel"
                        placeholder="Teléfono del Fabricante" required="" min="0" max="99999999" maxlenght="8">
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="txtEml" class="input__label">Correo</label>
                    <input type="email" class="form-control input-style" id="txtEml"
                        placeholder="Correo del Fabricante" required="" maxlenght="50">
                </div>
                <div class="form-group col-md-6">
                    <label for="txtFecFun" class="input__label">Fecha Fundación</label>
                    <input type="date" class="form-control input-style" id="txtFecFun"
                         required="">
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="txtFecOpe" class="input__label">Fecha Inicio Operaciones</label>
                    <input type="date" class="form-control input-style" id="txtFecOpe"
                        required="">
                </div>
                <div class="form-group col-md-6">
                    <label for="cboPais" class="input__label">País Origen</label>
                    <select id="cboPais" class="form-control input-style">
                        <option value="ALE">Alemania</option>
                        <option value="FRA">Francia</option>
                        <option value="JAP">Japón</option>
                        <option value="CHI">China</option>
                        <option value="EU">Estados Unidos</option>
                        <option value="UK">Reino Unido</option>
                    </select>
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="txtDir" class="input__label">Dirección</label>
                    <input type="text" class="form-control input-style" id="txtDir"
                        placeholder="Dirección del Fabricante" required="" maxlenght="500">
                </div>
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
