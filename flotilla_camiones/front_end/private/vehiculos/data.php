<?php 
include('../../../back_end/modelos/vehiculos.php');
include('../../../back_end/modelos/config.php');
?>


<!doctype html>
<html lang="es">
  
  <head>
<?php
include_once('../plantilla/head.php');
?>
<title>Vehiculos</title>

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
      <th scope="col">Capacidad</th>
      <th scope="col">Modelo</th>
       <th scope="col">Color</th>
       <th scope="col">Poliza</th>
       <th scope="col">Estatus</th>
       <th scope="col">Costo_mensual</th>
      <th scope="col">Foto</th>
      <th scope="col">Editar</th>
      <th scope="col">Borrar</th>
    </tr>
  </thead>

  <tbody>
    <?php 
    $conexion=new Conexion();
    $con=$conexion->getConection();
    $vehiculos=new Vehiculos($con);
    $vehiculos=$vehiculos->leer_todos();
    foreach($vehiculos as $vehiculos){
    ?>
    <tr>
  <th scope="row"><?php echo $vehiculos->id ?></th>
  <td> <?php echo $vehiculos->capacidad ?></td>
  <td> <?php echo $vehiculos->modelo ?></td>
  <td> <?php echo $vehiculos->color ?></td>
  <td> <?php echo $vehiculos->poliza ?></td>
  <td> <?php echo $vehiculos->estatus ?></td>
  <td> <?php echo $vehiculos->costo_mensual ?></td>
  


  <td> <img src="../../public/imagenes/vehiculos/<?php echo $vehiculos->foto ?>" alt="" width="50px"></td>

  <td><a href="editar.php?id=<?php echo $vehiculos->id ?>">Editar</a></td>
  <td><a href="mostrar.php?id=<?php echo $vehiculos->id ?>">Borrar</a></td>

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