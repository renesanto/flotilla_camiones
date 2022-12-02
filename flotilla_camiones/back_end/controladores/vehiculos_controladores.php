<?php
include('../modelos/vehiculos.php');
include('../modelos/config.php');

$opcion=$_POST['opcion'];
$target_dir = "../../front_end/public/imagenes/vehiculos/";
switch($opcion){
    case 1://crear
        $conexion=new Conexion();
        $con=$conexion->getConection();
        $vehiculos=new Vehiculos($con);

        $vehiculos->capacidad=$_POST['capacidad'];
        $vehiculos->modelo=$_POST['modelo'];
        $vehiculos->matricula=$_POST['matricula'];
        $vehiculos->color=$_POST['color'];
        $vehiculos->poliza=$_POST['poliza'];
        $vehiculos->costo=$_POST['costo_mensual'];
        

        $vehiculos->estatus="Activo";
        include ("subir_archivo.php");
        $vehiculos->foto=$file_name;
        $res=$vehiculos->crear();
        echo $res;
        if($res==1){
            echo"vehiculos agregado ";
        }else{
            echo $res;
        }
    // header('Location: ../../front_end/private/vehiculos/index.php');

    break; 

case 2://Modificar


    $conexion=new Conexion();
    $con=$conexion->getConection();

    $vehiculos=new Vehiculos($con);

    $vehiculos->capacidad=$_POST['capacidad'];
    $vehiculos->modelo=$_POST['modelo'];
    $vehiculos->capacidad=$_POST['matricula'];
    $vehiculos->modelo=$_POST['color'];
    $vehiculos->capacidad=$_POST['poliza'];
    $vehiculos->estatus=$_POST['estatus'];
    $vehiculos->estatus=$_POST['costo_mensual'];
    

    if($_FILES ['foto']['size']<=0){
        $vehiculos->foto=$_POST['foto_actual'];
    }else{
        include ("subir_archivo.php");
        $vehiculos->foto=$file_name;
    }

    $vehiculos->id=$_POST['id'];

    $res=$vehiculos->actualizar();
    if($res==1){
echo "Vehiculos actualizado";
    }else{
echo $res;     
    }
    header('Location: ../../front_end/private/vehiculos/index.php');
    break;

    case 3:
        $conexion=new Conexion();
        $con=$conexion->getConection();
        $vehiculos=new Vehiculos($con);

        $vehiculos->id=$_POST['id'];
        $res=$vehiculos->borrar();
        if($res==1){
            echo "DATOS BORRADOS!!";
        }else{
            echo $res;
        }
       // header('Location: ../../front_end/private/vehiculos/index.php');
    break;
    }


?>