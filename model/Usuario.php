<?php 

class Usuario extends Conectar{

    /**INSERTAR CORREO ELECTRONICO A BUESTRA BASE DE DATOS*/
    public function insert_correo($usu_correo){

        $conectar= parent::conexion();
        parent::set_names();
        $sql="INSERT INTO tm_usuario (correo,rol_id,fech_crea,est) VALUES (?,1,now(),1) ";
        $sql=$conectar->prepare($sql);
        $sql->bindValue(1,$usu_correo);
        $sql->execute();
    }

    public function get_correo($usu_correo){

        $conectar= parent::conexion();
        parent::set_names();
        $sql="SELECT * FROM tm_usuario WHERE correo=?";
        $sql=$conectar->prepare($sql);
        $sql->bindValue(1,$usu_correo);
        $sql->execute();
        return $resultado=$sql->fetchAll(PDO::FETCH_ASSOC);
    }




}


?>