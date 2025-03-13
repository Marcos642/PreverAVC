<?php 
// Esse código chama o script Python, captura a saída JSON e retorna o resultado.
class TemperaturaModel{
    public function preverTemperatura($valor){
        // Chama o script python e passa o valor como argumento
        $comando = "python 3 modelo_ia.py". escapeshellarg($valor);
        $output  = shell_exec($comando);
        // Decodifica a saída json em python
        return json_decode($output, true); 
    }
}