<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Cadastro Cliente</title>
</head>
<body>

	<h1>Atualizar Cliente</h1>
	<br />
	<form method="post" action='<c:url value="/inicio/efetivarAlteracao"/>'>
	<input type="hidden"  name="id" value="${cliente.id}">
	
		<p>
			Nome: <input type="text" size="80" name="nome" value="${cliente.nome}">
		</p>

		<p>
			E-mail: <input type="text" size="80" name="email" value="${cliente.email}">
		</p>

		<p>
			Telefone: <input type="text" size="80" name="telefone" value="${cliente.telefone}" onkeypress="mascara(this, '## ####-####')" maxlength="12">
		</p>

		<p>
			<input type="submit" value="Gravar">
		</p>





	</form>


<script type="text/javascript">
			
		function mascara(t, mask){
			 var i = t.value.length;
			 var saida = mask.substring(1,0);
			 var texto = mask.substring(i)
			 if (texto.substring(0,1) != saida){
			 t.value += texto.substring(0,1);
			 }
		}
	</script>

</body>
</html>