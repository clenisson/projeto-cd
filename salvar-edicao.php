<?php
$db = new PDO('mysql:host=localhost;dbname=logica_cd_curso;charset=utf8mb4', 'root', '123');
$idDoCurso = $_GET['id'];
$nomeDoCurso = $_POST['nome'];
$db->query("UPDATE cursos SET nome = '$nomeDoCurso' WHERE id = $idDoCurso");
echo "Curso editado com sucesso!";
