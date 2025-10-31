<%@ Page Title="" Language="C#" MasterPageFile="~/Mantenimientos/frmPrincipalMaster.Master" AutoEventWireup="true" CodeBehind="frmConsultaHabitaciones.aspx.cs" Inherits="PL_CRUD_HOTELES.Mantenimientos.frmConsultaHabitaciones" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>


    <nav aria-label="breadcrumb">
        <ol class="breadcrumb my-breadcrumb">
            <li class="breadcrumb-item"><a href="frmPrincipal.aspx">Inicio</a></li>
            <li class="breadcrumb-item active" aria-current="page">Consulta de Habitaciones</li>
        </ol>
    </nav>
    <div class="welcome-msg pt-3 pb-4">
        <h1>Hola <span class="text-primary" id="nombreUsuario"></span>, Bienvenido</h1>
        <p id="emlUsuario"></p>
    </div>

    <div class="card card_border py-2 mb-4">
        <div class="cards__heading">
            <h3>Filtros de Búsqueda de Habitaciones <span></span></h3>
        </div>
        <div class="card-body">
            <form action="javascript: cargaListaHabitaciones()" method="post">
                <div class="form-row">
                    <div class="form-group col-md-12">
                        <label for="cboHotel" class="input__label">Hotel</label>
                        <select id="cboHotel" class="form-control input-style">
<%--                            <option value="A">Hotel 1</option>
                            <option value="I">Hotel 2</option>--%>
                        </select>
                    </div>
                    <div class="form-group col-md-6">
                        <label for="bsqDescHabitacion" class="input__label">Descripción de Habitación</label>
                        <input type="text" class="form-control input-style" id="bsqDescHabitacion"
                            placeholder="Descripción de Habitación" maxlength="50">
                    </div>

                </div>
                    <div class="form-group col-md-6">
                        <label for="bsqEstado" class="input__label">Estado</label>
                        <select id="bsqEstado" class="form-control input-style">
                            <option value="A">Activo</option>
                            <option value="I">Inactivo</option>
                        </select>
                    </div>

                <button type="submit" class="btn btn-primary btn-style mt-4">Buscar</button>
                <button type="button" class="btn btn-primary btn-style mt-4" onclick="javascript: crearHabitacion()">Crear</button>
            </form>
        </div>
    </div>

    <div class="card card_border py-2 mb-4">
        <div class="cards__heading">
            <h3>Resultados de Búsqueda de Habitaciones <span></span></h3>
        </div>
        <div class="card-body">
            <table id="tblHabitaciones">
            </table>
        </div>
    </div>

    <script src="../JavaScript/Habitaciones.js"></script>


</asp:Content>


