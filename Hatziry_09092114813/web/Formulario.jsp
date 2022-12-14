<%-- 
    Document   : Formulario
    Created on : 15/10/2022, 12:42:09 AM
    Author     : Hatziry Chacón
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Html.html to edit this template
-->
<html>
    <head>
        <title>App Web Registro Cliente</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <script src="Js/JavaScript.js" type="text/javascript"></script>

        <style>
            *{
                margin: 0;
                padding: 0;
            }
            body{
                min-height: 100vh;
                background-image: url(https://www.xtrafondos.com/wallpapers/playstation-abstracto-8359.jpg);
                background-size: 100%;
                background-position: center center;
                background-attachment: fixed;
                background-repeat: no-repeat;
                background-size: cover;
            }
        </style>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <a class="navbar-brand" href="#">
                <img src="https://icon-library.com/images/home-icon-png/home-icon-png-28.jpg" width="30" height="30" class="d-inline-block align-top" alt="">
                Home
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
                <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
                    <li class="nav-item active">
                        <a class="nav-link" href="index.html">Registrarse <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="https://store.acer.com/en-us/?internal_source=us.acer.com&internal_medium=referral&internal_campaign=Ongoing&internal_content=Nav">Tienda</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="https://www.acer.com/ac/en/US/content/service-contact">Contacto</a>
                    </li>
                </ul>
                <form class="form-inline my-2 my-lg-0">
                    <input class="form-control mr-sm-2" type="search" placeholder="Search">
                    <button class="btn btn-outline-info my-2 my-sm-0" type="submit">Buscar</button>
                </form>
            </div>
        </nav>
        <div class="d-flex justify-content-around mx-4 my-5">
            <div class="shadow-lg p-3 bg-white rounded">
                <form method="POST" id="form" name="form" action="ClienteController">
                    <div class="mt-3 mb-5 mx-4">
                        <img src="https://cdn-icons-png.flaticon.com/512/2521/2521826.png" class="rounded mx-auto d-block" width="100" alt="...">
                        <h2 class="display-4 text-center my-4">  REGISTRO DE CLIENTE</h2>
                        <div class="row my-3">
                            <div class="col">
                                <label for="Nombres">Nombres</label>
                                <input type="text" class="form-control" placeholder="First name" name="name" id="name">
                            </div>
                            <div class="col">
                                <label for="Apellidos">Apellidos</label>
                                <input type="text" class="form-control" placeholder="Last name" name="lastname" id="lastname">
                            </div>
                        </div>
                        <div class="row my-3">
                            <div class="col">
                                <label for="codigo">Código Personal</label>
                                <input type="text" class="form-control" placeholder="Access code" name="code" id="code">
                                <input type="hidden" name="control" value="GUARDAR">
                            </div>
                            <div class="col">
                                <label for="telefono">Teléfono</label>
                                <input type="text" class="form-control" placeholder="Phone number" name="phone" id="phone">
                            </div>
                        </div>
                        <div class="form-row my-3">
                            <div class="col-sm-8">
                                <label for="email">Correo electrónico</label>
                                <input type="email" class="form-control" name="email" id="email">
                            </div>
                            <div class="col-sm-4">
                                <label for="pass">Contraseña</label>
                                <input type="password" class="form-control" name="pass" id="pass">
                            </div>
                        </div>
                        <div class="my-3">
                            <label for="inputAddress">Dirección de domicilio</label>
                            <input type="text" class="form-control" placeholder="Colonia XXXX, zona x, avenida xx" name="address" id="address">
                        </div>
                        <div class="row my-3">
                            <div class="col">
                                <label for="inputAddress2">Municipio</label>
                                <input type="text" class="form-control" placeholder="Municipality" name="municipio" id="muni">
                            </div>
                            <div class="col">
                                <div class="form-group col-md-6">
                                    <label for="inputCity">Ciudad</label>
                                    <input type="text" class="form-control" placeholder="City" name="city" id="city">
                                </div>
                            </div>
                        </div>
                        <button type="button" onclick="enviarDatos()" class="btn btn-outline-success">Registrar</button>
                        <button type="reset" class="btn btn-outline-danger">Vaciar</button>
                    </div>
                </form>
            </div>

            <div class="ml-4 my-5" style="width: 850px;" id="tablaContainer">
                <table class="table table-hover bg-white shadow-lg">
                    <thead class="table-light">
                        <tr>
                            <td>Nombres</td>
                            <td>Apellidos</td>
                            <td>Código</td>
                            <td>Teléfono</td>
                            <td>Correo</td>
                            <td>Ciudad</td>
                            <td>Opciones</td>
                        </tr>
                    </thead>
                    <tbody id="bodyTable">   
                    </tbody>
                </table>
            </div>
        </div>


    </div>
</body>
</html> 
