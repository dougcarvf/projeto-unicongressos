<?php include("conexao.php");
	  include("cabecalho.php");
	  include("bancoUsuario.php");
?>
<?php  
$email = $_POST["email"];
$senha = $_POST["senha"];
	
	if (loga($conexao,$email,$senha)) {?>
		<p>Logado nigga</p>
	<?php}else{
		$msg = mysqli_error($conexao);
	?>
	<p>OPS! não encontrado <?= $mg?></p>
	}

 

<?php include("rodape.php"); ?>