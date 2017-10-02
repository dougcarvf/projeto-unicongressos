<?php include("conecta.php");
include("bancoUsuario.php");
include("cabecalho.php")
?>

<?php  
$nome = $_POST["nome"];
$email = $_POST["email"];
$cpf = $_POST["cpf"];
$cnpj = $_POST["cnpj"];
$telefone = $_POST["telefone"];
$senha = $_POST["senha"];
$cep = $_POST["cep"];
$estado = $_POST["estado"];
$cidade = $_POST["cidade"];
$bairro = $_POST["bairro"];

if (cadastroUsuario($conexao,$nome,$email,$cpf,$cnpj,$telefone,$senha,$cep,$estado,$cidade,$bairro)) {?>
<p class="text-success">Parabens <?= $nome; ?>, <?= $preco; ?> você foi cadastrado com sucesso!</p>
<?php } else {
	$msg = mysqli_error($conexao);
	?>
	<p class="text-danger">OPS! <?= $nome; ?> não foi adicionado: <?= $msg ?></p>
	<?php
}
?>
<?php include("rodape.php") ?>