<?php  
/**INCIAMOS CLASE CONECTAR */
class Conectar{

    protected $dbh;
    /**FUNCION PROTEGIDA DE LA CADENA DE CONEXION */
    protected function conexion(){

        try{
            $conectar = $this->dbh = new PDO("mysql:local=localhost;dbname=bd_masivo","root","");
            return $conectar;
        }catch(Exception $e){
            /**EN CASO HUBIERA UN ERROR EN LA CADENA DE CONEXION */
            print "Error".$e->getMessage()."<br>";

            die();
        }


    }
    /**PARA IMPEDIR QUE TENGAMOS PROBLEMAS CON LA Ñ O TILDES */
    public function set_names(){

        return $this->conexion()->query("SET NAMES 'utf8'");
    }
    /**RUTA PRINCIPLA DEL PROYECTO */
    public function ruta(){
        return "http://localhost/CORREO-MASIVO/";
    }

}



?>