<?php
$db = new PDO('mysql:host=localhost;dbname=logica_cd_curso;charset=utf8mb4', 'root', '123');
$idDoCurso = $_GET['id'];
$db->query("DELETE FROM cursos WHERE id = $idDoCurso");
echo "Curso excluído com sucesso!";
