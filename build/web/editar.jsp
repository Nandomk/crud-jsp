<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.bean.Pessoa"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>CRU MVC - Cadastro</title>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
        <link rel="icon" href="favicon.ico" type="image/x-icon">

        <!-- Chamada ao css do framework Bootstrap -->
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <!-- jQuery necessaria para o funcionamento do Bootstrap -->
        <script src="bootstrap/js/jquery-1.11.1.js"></script>

        <!-- Chamada ao framework Bootstrap -->
        <script src="bootstrap/js/bootstrap.min.js"></script>

    </head>
    <body>
        <!-- Menu de navega��o fixo no topo -->
        <nav class="navbar navbar-inverse" role="navigation">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" 
                        data-target="#example-navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html">CRUD MVC JSP</a>
            </div>
            <div id="navbar" class="navbar-collapse collapse">
                <ul class="nav navbar-nav navbar-left">
                    <li><a href="index.html">Home<span class="sr-only"></span></a></li>
                    <li><a href="pesquisar.html">Pesquisar<span class="sr-only"></span></a></li>
                    <li><a href="Controle?acao=listar">Listar Todos<span class="sr-only"></span></a></li>
                </ul>
            </div><!--/.nav-collapse -->
        </nav>

        <!-- Painel do cadastro -->
        <div class="container col-md-6 col-md-offset-3">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h3 class="panel-title h1">Edi��o do Registro</h3>
                </div>
                <div class="panel-body">
                    <form name="form_mvc" class="form-horizontal" action="Controle" method="post">
                        <%
                            /**
                             * Cria uma lista para receber os registros do
                             * atributo listaPessoas originado do servlet
                             * Controle
                             */
                            List<Pessoa> pessoa = (ArrayList) request.getAttribute("listaPessoas");

                            // Percorre a lista dos registros e apresenta no navegador
                            for (Pessoa p : pessoa) {
                        %>                              
                        <fieldset>
                            <div class="form-group">
                                <label for="inputNome" class="col-lg-2 control-label">Nome</label>
                                <div class="col-lg-10">
                                    <input type="text" class="form-control" id="inputNome" name="nome" placeholder="Digite seu nome" value="<%=p.getNome()%>">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputTelefone" class="col-lg-2 control-label">Telefone</label>
                                <div class="col-lg-10">
                                    <input type="text" class="form-control" id="inputTelefone" name="telefone" placeholder="Digite seu telefone" value="<%=p.getTelefone()%>">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputTelefone" class="col-lg-2 control-label">Email</label>
                                <div class="col-lg-10">
                                    <input type="text" class="form-control" id="inputTelefone" name="email" placeholder="Digite seu email" value="<%=p.getTelefone()%>">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputTelefone" class="col-lg-2 control-label">Logradouro</label>
                                <div class="col-lg-10">
                                    <input type="text" class="form-control" id="inputTelefone" name="logradouro" placeholder="Digite seu Logradouro" value="<%=p.getLogradouro()%>">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputTelefone" class="col-lg-2 control-label">Bairro</label>
                                <div class="col-lg-10">
                                    <input type="text" class="form-control" id="inputTelefone" name="bairro" placeholder="Digite seu Bairro" value="<%=p.getBairro()%>">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputTelefone" class="col-lg-2 control-label">Cep</label>
                                <div class="col-lg-10">
                                    <input type="text" class="form-control" id="inputTelefone" name="cep" placeholder="Digite seu cep" value="<%=p.getCep()%>">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputTelefone" class="col-lg-2 control-label">Cidade</label>
                                <div class="col-lg-10">
                                    <input type="text" class="form-control" id="inputTelefone" name="cidade" placeholder="Digite seu cidade" value="<%=p.getCidade()%>">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputTelefone" class="col-lg-2 control-label">Estado</label>
                                <div class="col-lg-10">
                                    <input type="text" class="form-control" id="inputTelefone" name="estado" placeholder="Digite seu estado" value="<%=p.getEstado()%>">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-lg-6 col-lg-offset-2">
                                    <button type="submit" name="acao" class="btn btn-primary" value="alterar">Salvar</button>
                                </div>
                            </div>
                        </fieldset>
                        <input type="hidden" name="id" value="<%=p.getId()%>">
                        <%
                            } // Fim do la�o de repeti��o
                        %>                        
                    </form>        
                </div>      
            </div>                
        </div>
    </body>
</html>

