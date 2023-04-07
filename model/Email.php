<?php 

require('class.phpmailer.php');
include("class.smtp.php");

require_once("../config/conexion.php");
require_once("../model/Usuario.php");

class Email extends PHPMailer{
 
    protected $gCorreo="salgueronprado18@gmail.com";  // Correo Electrónico
    protected $gContrasena="qghbfnoiiefnqxmj"; // Contraseña de la cuenta de correo



    public function email_bienvenida($usu_correo){



        $this->isSMTP();                                      // Establece el tipo de correo electrónico para usar SMTP
        $this->Host = 'smtp.gmail.com';                     // Especifica los servidores SMTP principales y de respaldo
        $this->Port = 587;
        $this->SMTPAuth = true;                               // Habilita la autenticación SMTP      

        $this->Username = $this->gCorreo;
        $this->Password = $this->gContrasena;
        $this->From = $this->gCorreo;

        $this->FromName = "Bienvenido";
        $this->CharSet = 'UTF8';

        $this->addAddress($usu_correo);

        $this->WordWrap = 50;
        $this->isHTML(true);
        $this->Subject = "Bienvenido";
        $cuerpo = file_get_contents('../public/Template.html');
        $this->Body = $cuerpo;
        $this->AltBody = strip_tags("Un gusto Saludarlo");
        return $this->send();
    }
}
?>