<?php
// Esse código recebe os dados do formulário, chama o Model, e exibe a previsão.
require_once 'Model/TemperaturaModel.php';
class TemperaturaController{
    public function prever(){
        if($_SERVER["REQUIRE_METHOD"] == "POST"){
            $valor = $_POST["valor"];

            $modelo = new TemperaturaModel();
            $resultado = $modelo->preverTemperatura($valor);
            include 'views/resultado.php';
        }else{
            include 'view/formulário.php';
        }
    }
}