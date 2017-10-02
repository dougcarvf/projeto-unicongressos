<?php include("conecta.php") 
	

	function listaUsuario($conexao){
		$usuarios = array();
		$query = "select* from usuario";
		$resultado = mysqli_query($conexao,$query);
		while ($usuario = mysqli_fetch_assoc($resultado)) {
			array_push($usuarios, $usuario);
		}
		return $usuarios;
	}

function cadastroUsuario($conexao,$nome,$email,$cpf,$cnpj,$telefone,$senha,$cep,$estado,$cidade,$bairro){
		$usuarios = listaUsuario($conexao);
		$chave = '';
		$query = "";
		foreach ($usuarios as $usuario ) { 
			 if ($usuario['cpf'] == $cpf) {
			 	$chave = 'cpf';
			 
			 }else if($usuario['email'] == $mail){
			 	$usuario = 'email';
			 }
		}
		if ($chave === '') {
			$query = "insert into usuario (nome, email, cpf, cnpj, telefone, senha, cep, estado, cidade, bairro)
				values ('{$nome}, '{$email}', '{$cf}', '{$cnpj}', '{$telefone}', '{$senha}', '{$cep}', '{$estado}', '{$cidade}', '{$bairro}',)" ;	
		}
		
		return mysqli_query($conexao,$query);
	}

	function loga($conexao,$email,$senha){
		$usuario = listaUsuario($conexao);
		$query = "select * from usuario where {$email}=email and {$senha}=senha";
			
			return mysqli_query($conexao,$query);	
	}
	
?>