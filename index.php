<?php include("cabecalho.php");
	  include("conecta.php");
?>
<div class="container" action="loga.php" method="post">

	<form class="formLogin">
		<div class="form-group">
			<label for="email">Email</label>
			<input type="email" class="form-control" id="email" aria-describedby="emailHelp" placeholder="Enter login">
		</div>
		<div class="form-group">
			<label for="senha">Senha</label>
			<input type="password" class="form-control" id="senha" placeholder="Password">
		</div>
		<div class="form-group">
		<label><a href="cadastroUsuario.php">Não possui uma conta? Cadastresse aqui!</a></label>		
		</div>
		<button type="submit" class="btn btn-primary">Entrar</button>
	</form>

</div>

<?php include("rodape.php");?>