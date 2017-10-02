<?php include("cabecalho.php");
	  include("conecta.php");
 ?>


<div class="cadastroUsuario">	
	<form action="adicionaUsuario.php" method="post">
		<div class="form-group">
			<label for="nome">Nome</label>
			<input type="text" class="form-control camposFormularios" id="nome" placeholder="Digite seu nome" required>
		</div>
		<div class="form-group">
			<label for="email">Email</label>
			<input type="email" class="form-control camposFormularios" id="email" placeholder="Digite seu email" required>
		</div>
		
		<div class="form-group">
			<label for="cpf">Cpf</label>
			<input type="text" class="form-control camposFormularios" id="cpf" placeholder="Digite seu cpf" required>
		</div>

		<div class="form-group">
			<label for="cnpj">Cnpj (Não obrigratorio)</label>
			<input type="text" class="form-control camposFormularios" id="Cnpj" placeholder="Digite seu Cnpj">
		</div>

		<div class="form-group">
			<label for="telefone">Telefone</label>
			<input type="text" class="form-control camposFormularios" id="Telefone" placeholder="Digite seu Telefone" required>
		</div>

		<div class="form-group">
			<label for="senha">Senha</label>
			<input type="text" class="form-control camposFormularios" id="Senha" placeholder="Digite seu Senha" required>
		</div>

		<div class="form-group">
			<label for="cep">Cep</label>
			<input type="text" class="form-control camposFormularios" id="cep" placeholder="Digite seu cep" required>
		</div>

		<div class="form-group">
			<label for="estado">Estado</label>
			<input type="text" class="form-control camposFormularios" id="estado" placeholder="Digite seu estado" required>
		</div>

		<div class="form-group">
			<label for="cidade">Cidade</label>
			<input type="text" class="form-control camposFormularios" id="cidade" placeholder="Digite seu cidade" required>
		</div>

		<div class="form-group">
			<label for="Bairro">Bairro</label>
			<input type="text" class="form-control camposFormularios" id="Bairro" placeholder="Digite seu Bairro" required>
		</div>



		<button type="submit" class="btn btn-primary">Cadastrar</button>
	</form>
</div>





<?php include("rodape.php"); ?>