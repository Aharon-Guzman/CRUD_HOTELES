<%@ Page Title="" Language="C#" MasterPageFile="~/Mantenimientos/frmPrincipalMaster.Master" AutoEventWireup="true" CodeBehind="frmMantenimientoHabitaciones.aspx.cs" Inherits="PL_CRUD_HOTELES.Mantenimientos.frmMantenimientoHabitaciones" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <nav aria-label="breadcrumb">
        <ol class="breadcrumb my-breadcrumb">
            <li class="breadcrumb-item"><a href="frmPrincipal.aspx">Inicio</a></li>
            <li class="breadcrumb-item"><a href="frmConsultaHabitaciones.aspx">Consulta de Habitaciones</a></li>
            <li class="breadcrumb-item active" aria-current="page">Mantenimiento de Habitaciones</li>
        </ol>
    </nav>
    <div class="welcome-msg pt-3 pb-4">
        <h1>Hola <span class="text-primary" id="nombreUsuario"></span>, Bienvenido</h1>
        <p id="emlUsuario"></p>
    </div>

    <div class="card card_border py-2 mb-4">
        <div class="cards__heading">
            <h3>Mantenimiento de Información de Habitaciones <span></span></h3>
        </div>
        <div class="card-body">
            <form action="javascript: mantenimientoHabitacion()" method="post">
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="cboHotel" class="input__label">Hotel</label>
                        <select id="cboHotel" class="form-control input-style">
                            <option value="A">Hotel 1</option>
                            <option value="I">Hotel 2</option>
                        </select>
                    </div>

                    <div class="form-group col-md-6">
                        <label for="txtDescHabitacion" class="input__label">Descripción Habitación</label>
                        <input type="text" class="form-control input-style" id="txtDescHabitacion"
                            placeholder="Descripción de Habitación" maxlength="50" required="">
                    </div>
                </div>


                <div class="form-row">

                   <div class="form-group col-md-6">
                       <label for="cboTipoHabitacion" class="input__label">Tipo de Habitación</label>
                       <select id="cboTipoHabitacion" class="form-control input-style">
                           <option value="A">Luxury</option>
                           <option value="I">Gold</option>
                       </select>
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
    <script src="../JavaScript/Habitaciones.js"></script>




</asp:Content>
