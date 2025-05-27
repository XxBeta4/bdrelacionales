<?php
    header("Content-Type: application/json");
    header("Access-Control-Allow-Origin: *");

    $usuarios=[
        ["id" => 1, "nombre" => "Bayron Estrada", "correo" => "bayron@gmail.com"],
        ["id" => 1, "nombre" => "Rosselyn Esparza", "correo" => "rosselyn@gmail.com"],
        ["id" => 1, "nombre" => "Sofia Delgado", "correo" => "sofia@gmail.com"],
    ];

    echo json_encode($usuarios);

?>