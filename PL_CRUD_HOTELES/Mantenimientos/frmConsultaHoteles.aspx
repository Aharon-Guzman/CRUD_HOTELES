<%@ Page Title="" Language="C#" MasterPageFile="~/Mantenimientos/frmPrincipalMaster.Master" AutoEventWireup="true" CodeBehind="frmConsultaHoteles.aspx.cs" Inherits="PL_CRUD_HOTELES.Mantenimientos.frmConsultaHoteles" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>


<nav aria-label="breadcrumb">
  <ol class="breadcrumb my-breadcrumb">
    <li class="breadcrumb-item"><a href="frmPrincipal.aspx">Inicio</a></li>
    <li class="breadcrumb-item active" aria-current="page">Consulta de Hoteles</li>
  </ol>
</nav>
<div class="welcome-msg pt-3 pb-4">
  <h1>Hola <span class="text-primary" id="nombreUsuario"></span>, Bienvenido</h1>
  <p id="emlUsuario"></p>
</div>

<div class="card card_border py-2 mb-4">
	<div class="cards__heading">
        <h3>Filtros de Búsqueda de Hoteles <span></span></h3>
    </div>
    <div class="card-body">
        <form action="javascript: cargaListaHoteles()" method="post">
           <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="bsqHotel" class="input__label">Hotel</label>
                    <input type="text" class="form-control input-style" id="bsqHotel"
                        placeholder="Nombre de Hotel" maxlength="50">
                </div>
                <div class="form-group col-md-6">
                    <label for="bsqEstado" class="input__label">Estado</label>
                    <select id="bsqEstado" class="form-control input-style">
                        <option value="A">Activo</option>
                        <option value="I">Inactivo</option>
                    </select>
                </div>
            </div>
            <button type="submit" class="btn btn-primary btn-style mt-4">Buscar</button>
            <button type="button" class="btn btn-primary btn-style mt-4" onclick="javascript: crearHotel()">Crear</button>
        </form>
    </div>
</div>

<div class="card card_border py-2 mb-4">
	<div class="cards__heading">
        <h3>Resultados de Búsqueda de Hoteles <span></span></h3>
    </div>
    <div class="card-body">
        <table id="tblHoteles">
        <%--Aquí se carga el contenido dinámico de la tabla--%>
        </table>
    </div>
</div>
    <script src="../JavaScript/Hoteles.js"></script>



</asp:Content>
