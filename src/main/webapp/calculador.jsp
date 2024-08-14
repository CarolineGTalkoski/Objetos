<%-- 
    Document   : calculador
    Created on : 18 de jul. de 2024, 16:07:19
    Author     : Aluno
--%>

<%@page import="com.mycompany.objetos.Calculador"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Calculador</h1>
        <form action="" method="post">
            
            <label for="valor1" class="form-label">
            Digite o primeiro valor:</label>
            <input type="number" name="valor1" 
               class="form-control" required><br><br>

            <label for="valor2" class="form-label">
            Digite o segundo valor:</label>
            <input type="number" name="valor2"
               class="form-control"required>

            <select name="operacao">
                <option value="somar">Adição</option>
                <option value="subtrair">Subtração</option>
                <option value="multiplicar">Multiplicação</option>
                <option value="dividir">Divisão</option>
            </select>
        <input type="submit" value="Calcular">
    </form>
        <%
        String valor1 = request.getParameter("valor1");
        String valor2 = request.getParameter("valor2");    
            
        float val1 = 0;
        float val2 = 0;
        Calculador calc = new Calculador();
        
        
        if (valor1 != null && !valor1.isEmpty()) {  //Verifica se o campo valor1 foi enviado e não está vazio
        valor1 = valor1.replace(",", ".");
        val1 = Float.parseFloat(valor1);
            }
            
        if (valor2 != null && !valor2.isEmpty()) {  //Verifica se o campo valor2 foi enviado e não está vazio
        valor2 = valor2.replace(",", ".");
        val2 = Float.parseFloat(valor2);
            }
        String operacao = request.getParameter("operacao");
        float resultado = 0;
        
        calc.setValorA(val1);
        calc.setValorB(val2);
        resultado = calc.somar();
        out.println("Soma: " + resultado);
        
        calc.setValorA(20);
        resultado = calc.multiplicar();
        out.println("Multiplicação: " + resultado);
        
        float valorB = 5;
        calc.setValorB(valorB);
        resultado = calc.subtrair();
        out.println("Subtração: " + resultado);
        
        %>
    </body>
</html>
