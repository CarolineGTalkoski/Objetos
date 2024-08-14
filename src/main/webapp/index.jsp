<%-- 
    Document   : index
    Created on : 18 de jul. de 2024, 14:37:19
    Author     : Aluno
--%>

<%@page import="com.mycompany.objetos.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Informações do Usuário</h1>
        <%
        //Criar uma instância da classe Usuario diretamente na JSP
        Usuario usuario = new Usuario("João", 25, "Masculino");
        //Exibir as informações do usuário
        out.println("<p><strong>Nome:</strong> " + usuario.getNome() + "</p>");
        out.println("<p><strong>Idade:</strong> " + usuario.getIdade() + "</p>");
        out.println("<p><strong>Sexo:</strong> " + usuario.getSexo() + "</p>");
        
        usuario.setNome ("Pedro");
        out.println("<p><strong>Informações Atualizadas:</strong> " + usuario.imprimir() + "</p>");
        
        usuario.setIdade(20);
        out.print(usuario.imprimir());
        
        out.print(usuario.imprimir());
        %>
    </body>
</html>
