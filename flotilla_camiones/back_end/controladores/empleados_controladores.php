<?php
include('../modelos/empleados.php');
include('../modelos/config.php');

$opcion=$_POST['opcion'];
$target_dir = "../../front_end/public/imagenes/empleados/";
switch($opcion){
    case 1://crear
        $conexion=new Conexion();
        $con=$conexion->getConection();
        $empleado=new Empleados($con);

        $empleados->apellido1=$_POST['apellido1'];
        $empleados->apellido2=$_POST['apellido2'];
        $empleados->nombre=$_POST['nombre'];
        $empleados->correo=$_POST['correo'];
        $empleados->clave=$_POST['clave'];
        
        $empleados->estatus="Activo";
        include ("subir_archivo.php");
        $empleados->foto=$file_name;
        $res=$empleados->crear();
        echo $res;
        if($res==1){
            echo"Empleados agregado ";
        }else{
            echo $res;
        }
        header('Location: ../../front_end/private/empleados/index.php');

    break; 

case 2://Modificar


    $conexion=new Conexion();
    $con=$conexion->getConection();

    $empleados=new Empleados($con);

    $empleados->apellido1=$_POST['apellido1'];
    $empleados->apellido2=$_POST['apellido2'];
    $empleados->nombre=$_POST['nombre'];
    $empleados->correo=$_POST['correo'];
    $empleados->nombre=$_POST['clave'];
    $empleados->estatus=$_POST['estatus'];
    

    if($_FILES ['foto']['size']<=0){
        $empleados->foto=$_POST['foto_actual'];
    }else{
        include ("subir_archivo.php");
        $empleados->foto=$file_name;
    }

    $empleados->id=$_POST['id'];

    $res=$empleados->actualizar();
    if($res==1){
echo "Empleados actualizado";
    }else{
echo $res;     
    }
    header('Location: ../../front_end/private/empleados/index.php');
    break;

    case 3:
        $conexion=new Conexion();
        $con=$conexion->getConection();
        $empleados=new Empleados($con);

        $empleados->id=$_POST['id'];
        $res=$empleados->borrar();
        if($res==1){
            echo "DATOS BORRADOS!!";
        }else{
            echo $res;
        }
        header('Location: ../../front_end/private/empleados/index.php');
    break;
    }


?>