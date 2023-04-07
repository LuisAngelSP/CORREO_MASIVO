<?php  
/**LLAMANDO A CADENA DE CONEXION */
require_once("../config/conexion.php");
/**LLAMANDO A LA CLASE */
require_once("../model/Usuario.php");
    /**INICIALIZANDO CLASE */
    $usuario = new Usuario();

require_once("../model/Email.php");
    $email= new Email();

/**OPCION DE SOLICITUD DE CONTROLLER */
    switch($_GET["op"]){
        /**SERVICIO PARA GUARDAR CORREO ELECTRONICO */
        case "guardarcorreo":

            $datos=$usuario->get_correo($_POST["usu_correo"]);

            if(is_array($datos)==true and count($datos)==0){
                $usuario->insert_correo($_POST["usu_correo"]);
                echo 1;
            }else{
                
                echo 2;
            }

            break;

        case "emailBienvenida":

            
            $email->email_bienvenida($_POST["usu_correo"]);


            break;

    }




?>