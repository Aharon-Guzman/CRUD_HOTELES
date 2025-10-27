<%@ Page Title="Dashboard" Language="C#" MasterPageFile="~/Mantenimientos/frmPrincipalMaster.Master" AutoEventWireup="true" CodeBehind="frmPrincipal.aspx.cs" Inherits="PL_CRUD_HOTELES.Mantenimientos.frmPrincipal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- Chart.js -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.9.1/chart.min.js"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <!-- Tarjetas de estadísticas -->
    <div class="row">
        <div class="col-lg-3 col-xs-6">
            <div class="small-box bg-aqua">
                <div class="inner">
                    <h3>150</h3>
                    <p>Reservas Totales</p>
                </div>
                <div class="icon">
                    <i class="fa fa-calendar"></i>
                </div>
                <a href="#" class="small-box-footer">Más info <i class="fa fa-arrow-circle-right"></i></a>
            </div>
        </div>

        <div class="col-lg-3 col-xs-6">
            <div class="small-box bg-green">
                <div class="inner">
                    <h3>53<sup style="font-size: 20px">%</sup></h3>
                    <p>Ocupación</p>
                </div>
                <div class="icon">
                    <i class="fa fa-bed"></i>
                </div>
                <a href="#" class="small-box-footer">Más info <i class="fa fa-arrow-circle-right"></i></a>
            </div>
        </div>

        <div class="col-lg-3 col-xs-6">
            <div class="small-box bg-yellow">
                <div class="inner">
                    <h3>44</h3>
                    <p>Nuevos Clientes</p>
                </div>
                <div class="icon">
                    <i class="fa fa-users"></i>
                </div>
                <a href="#" class="small-box-footer">Más info <i class="fa fa-arrow-circle-right"></i></a>
            </div>
        </div>

        <div class="col-lg-3 col-xs-6">
            <div class="small-box bg-red">
                <div class="inner">
                    <h3>65</h3>
                    <p>Habitaciones Disponibles</p>
                </div>
                <div class="icon">
                    <i class="fa fa-hotel"></i>
                </div>
                <a href="#" class="small-box-footer">Más info <i class="fa fa-arrow-circle-right"></i></a>
            </div>
        </div>
    </div>

    <!-- Gráfico de Ventas -->
    <div class="row">
        <div class="col-md-12">
            <div class="box box-primary">
                <div class="box-header with-border">
                    <i class="fa fa-bar-chart"></i>
                    <h3 class="box-title">Ventas</h3>
                    
                    <div class="box-tools pull-right">
                        <button type="button" class="btn btn-box-tool" id="btnDonut">Donut</button>
                        <button type="button" class="btn btn-box-tool active" id="btnArea">Area</button>
                    </div>
                </div>
                <div class="box-body">
                    <div style="position: relative; height: 300px;">
                        <canvas id="salesChart"></canvas>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Tabla de reservas recientes -->
    <div class="row">
        <div class="col-md-12">
            <div class="box">
                <div class="box-header with-border">
                    <h3 class="box-title">Reservas Recientes</h3>
                </div>
                <div class="box-body">
                    <table class="table table-bordered table-striped">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Cliente</th>
                                <th>Hotel</th>
                                <th>Fecha Check-in</th>
                                <th>Fecha Check-out</th>
                                <th>Estado</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>001</td>
                                <td>Juan Pérez</td>
                                <td>Hotel Paradise</td>
                                <td>15/10/2024</td>
                                <td>20/10/2024</td>
                                <td><span class="label label-success">Confirmada</span></td>
                            </tr>
                            <tr>
                                <td>002</td>
                                <td>María García</td>
                                <td>Hotel Costa del Sol</td>
                                <td>18/10/2024</td>
                                <td>22/10/2024</td>
                                <td><span class="label label-warning">Pendiente</span></td>
                            </tr>
                            <tr>
                                <td>003</td>
                                <td>Carlos López</td>
                                <td>Hotel Montaña</td>
                                <td>20/10/2024</td>
                                <td>25/10/2024</td>
                                <td><span class="label label-success">Confirmada</span></td>
                            </tr>
                            <tr>
                                <td>004</td>
                                <td>Ana Martínez</td>
                                <td>Hotel Beach Resort</td>
                                <td>22/10/2024</td>
                                <td>28/10/2024</td>
                                <td><span class="label label-danger">Cancelada</span></td>
                            </tr>
                            <tr>
                                <td>005</td>
                                <td>Pedro Sánchez</td>
                                <td>Hotel Paradise</td>
                                <td>25/10/2024</td>
                                <td>30/10/2024</td>
                                <td><span class="label label-success">Confirmada</span></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>

    <script>
        // Datos del gráfico
        const labels = ['Ene', 'Feb', 'Mar', 'Abr', 'May', 'Jun', 'Jul', 'Ago', 'Sep', 'Oct', 'Nov', 'Dic',
            'Ene', 'Feb', 'Mar', 'Abr', 'May', 'Jun', 'Jul', 'Ago', 'Sep', 'Oct', 'Nov', 'Dic'];

        const data2012 = [5000, 4500, 6000, 7000, 6500, 7500, 8000, 7000, 6000, 8500, 15000, 10000];
        const data2013 = [8000, 7500, 9000, 10000, 11000, 12000, 13000, 18000, 22000, 16000, 13000, 14000];

        let currentChart;
        const ctx = document.getElementById('salesChart').getContext('2d');

        // Función para crear gráfico de área
        function createAreaChart() {
            if (currentChart) {
                currentChart.destroy();
            }

            currentChart = new Chart(ctx, {
                type: 'line',
                data: {
                    labels: labels,
                    datasets: [
                        {
                            label: '2012',
                            data: data2012,
                            backgroundColor: 'rgba(96, 125, 139, 0.5)',
                            borderColor: 'rgba(96, 125, 139, 1)',
                            borderWidth: 2,
                            fill: true,
                            tension: 0.4,
                            pointRadius: 4,
                            pointHoverRadius: 6,
                            pointBackgroundColor: 'rgba(96, 125, 139, 1)'
                        },
                        {
                            label: '2013',
                            data: data2013,
                            backgroundColor: 'rgba(100, 181, 246, 0.5)',
                            borderColor: 'rgba(100, 181, 246, 1)',
                            borderWidth: 2,
                            fill: true,
                            tension: 0.4,
                            pointRadius: 4,
                            pointHoverRadius: 6,
                            pointBackgroundColor: 'rgba(100, 181, 246, 1)'
                        }
                    ]
                },
                options: {
                    responsive: true,
                    maintainAspectRatio: false,
                    interaction: {
                        intersect: false,
                        mode: 'index'
                    },
                    plugins: {
                        legend: {
                            display: true,
                            position: 'top'
                        },
                        tooltip: {
                            callbacks: {
                                label: function (context) {
                                    return context.dataset.label + ': $' + context.parsed.y.toLocaleString();
                                }
                            }
                        }
                    },
                    scales: {
                        x: {
                            grid: {
                                display: false
                            }
                        },
                        y: {
                            beginAtZero: true,
                            ticks: {
                                callback: function (value) {
                                    return '$' + value.toLocaleString();
                                }
                            }
                        }
                    }
                }
            });
        }

        // Función para crear gráfico de donut
        function createDonutChart() {
            if (currentChart) {
                currentChart.destroy();
            }

            // Sumar totales de cada año
            const total2012 = data2012.reduce((a, b) => a + b, 0);
            const total2013 = data2013.reduce((a, b) => a + b, 0);

            currentChart = new Chart(ctx, {
                type: 'doughnut',
                data: {
                    labels: ['2012', '2013'],
                    datasets: [{
                        data: [total2012, total2013],
                        backgroundColor: [
                            'rgba(96, 125, 139, 0.8)',
                            'rgba(100, 181, 246, 0.8)'
                        ],
                        borderColor: [
                            'rgba(96, 125, 139, 1)',
                            'rgba(100, 181, 246, 1)'
                        ],
                        borderWidth: 2
                    }]
                },
                options: {
                    responsive: true,
                    maintainAspectRatio: false,
                    plugins: {
                        legend: {
                            position: 'bottom'
                        },
                        tooltip: {
                            callbacks: {
                                label: function (context) {
                                    return context.label + ': $' + context.parsed.toLocaleString();
                                }
                            }
                        }
                    }
                }
            });
        }

        // Inicializar con gráfico de área
        createAreaChart();

        // Botones de cambio de vista
        document.getElementById('btnArea').addEventListener('click', function () {
            createAreaChart();
            this.classList.add('active');
            document.getElementById('btnDonut').classList.remove('active');
        });

        document.getElementById('btnDonut').addEventListener('click', function () {
            createDonutChart();
            this.classList.add('active');
            document.getElementById('btnArea').classList.remove('active');
        });
    </script>

    <style>
        .btn-box-tool.active {
            color: #3c8dbc;
            font-weight: bold;
        }
    </style>
</asp:Content>