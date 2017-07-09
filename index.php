<?php
$db = new PDO('mysql:host=localhost;dbname=logica_cd_curso;charset=utf8mb4', 'root', '123');
$db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
$db->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
?>

<a href="criar.php">Criar curso</a> <br/>

<?php
foreach($db->query('SELECT * FROM logica_cd_curso.cursos;') as $row) {
	$idDoCurso = $row['id'];
	$nomeDoCurso = $row['nome'];
	
    echo $idDoCurso . ' ' .$nomeDoCurso;
	echo "<br>";
}