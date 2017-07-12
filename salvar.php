<?php
$db = new PDO('mysql:host=localhost;dbname=logica_cd_curso;charset=utf8mb4', 'root', '123');
$nomeDoCurso = $_POST['nome'];
$db->query("INSERT INTO cursos (nome) VALUES ('$nomeDoCurso')");
echo "Curso criado com sucesso!";
