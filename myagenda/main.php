<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/png" href="https://upload.wikimedia.org/wikipedia/commons/thumb/5/56/Logo_de_la_UNACH.svg/2051px-Logo_de_la_UNACH.svg.png">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/style.css">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

    <?php   
        session_start();
        // Acceder a las variables de sesión establecidas en set_session.php
        $username = $_SESSION['username'];
        
        if (!isset($_SESSION['username'])) {
            header("Location: index.php");
        }
    ?>

    <title>Document</title>
</head>
<?php
include ("cabecera.php");
?>
<body>
    <article>
        <div class="container">
            <h1>Vamos por buen camino!!!</h1>

            <table class="table table-sm">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Materia</th>
                            <th>Profesor</th>
                            <th>Lugar</th>
                            <th>Temas</th>
                            <th>Grado grupo</th>
                            <th>Carrera</th>
                            <th>Usario</th>
                            <th>Eliminar</th>
                            <th>Modificar</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php

                            include("comandos.php");
                            $registros = consulta("registro");

                            foreach($registros as $registro) {
                                echo "<tr>";
                                echo "<td>".$registro['idcalendario']."</td>";
                                echo "<td>".$registro['idmateria']."</td>";
                                echo "<td>".$registro['idprofesor']."</td>";
                                echo "<td>".$registro['idlugar']."</td>";
                                echo "<td>".$registro['temas']."</td>";
                                echo "<td>".$registro['gradogrupo']."</td>";
                                echo "<td>".$registro['idcarrera']."</td>";
                                echo "<td>".$registro['idusuario']."</td>";
                                echo "<td><a class='btn btn-danger' onclick='return miFuncion()' href='eliminar.php?id=" . $registro['idcalendario'] . "' >Eliminar</a></td>";
                                echo "<td><a class='btn btn-warning' onclick='return miFuncion()' href='eliminar.php?id=" . $registro['idcalendario'] . "' >Modificar</a></td>";
                                echo "</tr>";
                            }
                        ?>
                    </tbody>
                </table>
                <script>
                    function miFuncion() {
                        return confrim('Estas seguro');
                    }
                </script>
            <form action="logout.php" method="post">
                <input type="submit" value="Cerrar sesión">
            </form>
        </div>
    </article>
</body>
</html>