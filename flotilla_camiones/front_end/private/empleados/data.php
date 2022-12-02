<?php 
include('../../../back_end/modelos/empleados.php');
include('../../../back_end/modelos/config.php');
?>


<!doctype html>
<html lang="es">
  
  <head>
<?php
include_once('../plantilla/head.php');
?>
<title>Empleados</title>

  </head>
  
  <body>
    
  <header>  
  <?php
include_once('../plantilla/header.php');
 ?>
</header>

<navbar> 
 <?php
include_once('../plantilla/navbar.php');
 ?>
</navbar> 

 
<main> 
<table class="table">
   <thead>
    <tr>
      <th scope="col">Id</th>
      <th scope="col">Nombre</th>
      <th scope="col">Apellido Paterno</th>
      <th scope="col">Apellido Materno</th>
      <th scope="col">Correo</th>
      <th scope="col">Clave</th>
       <th scope="col">Estatus</th>
      <th scope="col">Foto</th>
      <th scope="col">Editar</th>
      <th scope="col">Borrar</th>
    </tr>
  </thead>

  <tbody>
    <?php 
    $conexion=new Conexion();
    $con=$conexion->getConection();
    $empleados=new Empleados($con);
    $empleados=$empleados->leer_todos();
    foreach($empleados as $empleados){
    ?>
    <tr>
  <th scope="row"><?php echo $empleados->id ?></th>
  <td> <?php echo $empleados->nombre ?></td>
  <td> <?php echo $empleados->apellido1 ?></td>
  <td> <?php echo $empleados->apellido2 ?></td>
  <td> <?php echo $empleados->estatus ?></td>
  <td> <img src="../../public/imagenes/empleados/<?php echo $empleados->foto ?>" alt="" width="50px"></td>

  <td><a href="editar.php?id=<?php echo $empleados->id ?>">Editar</a></td>
  <td><a href="mostrar.php?id=<?php echo $empleados->id ?>">Borrar</a></td>

    </tr>
 <?php
    }
 ?>
  </tbody>
  </table>

</main><!-- /.container -->

    <footer class="footer">
<?php
include_once('../plantilla/footer.php');
 ?>
</footer>
      
  </body>
</html>