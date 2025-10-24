<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmInicioSesion.aspx.cs" Inherits="PL_CRUD_HOTELES.Login.frmInicioSesion" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CRUD Hoteles - Iniciar Sesión</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" href="css/styleLogin.css">
</head>
<body>
    <div class="particles" id="particles"></div>

    <div class="login-container">
        <div class="info-panel">
            <div class="info-panel-content">
                <div class="hotel-logo">
                    <i class="fas fa-hotel"></i>
                </div>
                <h1>CRUD Hoteles</h1>
                <p>Bienvenido al sistema para una gestión hotelera más elegante y eficiente</p>
                
                <div class="features">
                    <div class="feature-item">
                        <i class="fas fa-shield-alt"></i>
                        <span>Acceso seguro y encriptado</span>
                    </div>
                    <div class="feature-item">
                        <i class="fas fa-clock"></i>
                        <span>Disponible 24/7</span>
                    </div>
                    <div class="feature-item">
                        <i class="fas fa-mobile-alt"></i>
                        <span>Compatible con todos los dispositivos</span>
                    </div>
                </div>
            </div>
        </div>

        <div class="form-panel">
            <div class="form-header">
                <h2>Iniciar Sesión</h2>
                <p>Accede a tu cuenta para gestionar tu hotel</p>
            </div>

            <div class="message" id="message">
                <i class="fas fa-exclamation-circle"></i>
                <span id="messageText"></span>
            </div>

            <form id="loginForm" action="javascript: inicioSesion()" method="post">
                <div class="input-group">
                    <label for="email">Correo Electrónico</label>
                    <div class="input-wrapper">
                        <i class="fas fa-envelope"></i>
                        <input type="email" id="txtUsuario" name="email" placeholder="ejemplo@hotel.com"required>
                    </div>
                </div>

                <div class="input-group">
                    <label for="password">Contraseña</label>
                    <div class="input-wrapper">
                        <i class="fas fa-lock"></i>
                        <input type="password"id="txtPassword"name="password"placeholder="••••••••"required>
                    </div>
                </div>

                <button type="submit" class="login-btn" id="loginBtn">
                    Iniciar Sesión
                </button>
            </form>

        </div>
    </div>
    <script src="javascript/jquery.min.js"></script>
    <script src="js/jquery.vide.js"></script>
    <script src="../JavaScript/jquery.cookie.js"></script>
    <script src="../JavaScript/InicioSesion.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

</body>
</html>
