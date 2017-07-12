<?php
$db = new PDO('mysql:host=localhost;dbname=logica_cd_curso;charset=utf8mb4', 'root', '123');
$idDoCurso = $_GET['id'];
$curso = $db->query("SELECT * FROM cursos WHERE id = $idDoCurso")->fetch();
?>

<form action="salvar-edicao.php?id=<?php echo $idDoCurso ?>" method="post">
    <div>
        <label for="nome">Nome do curso:</label>
        <input type="text" name="nome" id="nome" value="<?php echo $curso['nome'] ?>"/>
    </div>
	
	<input type="submit" value="Salvar">

</form>