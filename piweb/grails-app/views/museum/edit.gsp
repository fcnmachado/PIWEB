<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
</head>
<body>
<<<<<<< HEAD
<div>
    <g:link controller="museum" action="createItem" params="[museumId: museum.id]">Adicionar Item</g:link>
    <p>
    <h2>${museum.name}</h2>
    <h3><g:link controller="museum" action="delete" params="[id: museum.id]">Remover Museu</g:link></h3>
    <h10>criado por ${museum.user.username}</h10>
</p>
    <g:img uri="${museum.image?.url}"/>
    <h5>${museum.description}</h5>
    <g:each in="${museum.itens}" var="item">
        <p></p>
        ${item.name}
        <g:img uri="${item.images[0]?.url}"/> 
        ${item.description}
    </g:each>
</div>
=======
<section class="main-area container-fluid">
    <header>
        <h1 class="offset-md-3 col-md-6"> editar museu #${museum.id} </h1>
        <h2 class="offset-md-3 col-md-6"> preencha os dados abaixo para editar as informações do "${museum.name}" </h2>
    </header>

    <div class="col-md-6 offset-md-3">

        <div class="card bg-light mb-3">
            <div class="card-header">Formulário para edição dos dados do museu</div>
            <div class="card-body">
                <g:uploadForm controller="museum" action="update">
                    <div class="row">
                        <div class="form-group col-md-6 offset-md-3">
                            <label for="imageFile">Imagem:</label>
                            <input type="file" class="form-control" id="imageFile" name="imageFile">
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-6 offset-md-3">
                            <label for="name">Nome:</label>
                            <input type="text" class="form-control" id="name" name="museum.name" value="${museum.name}">
                            <input type="hidden" class="form-control" id="id" name="museum.id" value="${museum.id}">
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-6 offset-md-3">
                            <label for="description">Descrição:</label>
                            <textarea class="form-control" id="description" name="museum.description" rows="5">${museum.description}</textarea>
                        </div>
                    </div>
                    <div id="submit" class="row align-items-center justify-content-center">
                        <g:submitButton name="Cadastrar" value="ATUALIZAR" class="btn btn-primary"/>
                    </div>
                </g:uploadForm>
            </div>
        </div>
    </div>


    <div class="col-md-10 offset-md-1 text-md-right mb-3">
        <g:link controller="item" action="form" params="[museumId: museum.id]">[+] Criar Nova Exposição</g:link>
    </div>
    <div class="col-md-6 col-md-10 offset-md-1">
        <div class="card bg-light mb-3">
        <div class="card-header">Lista de exposições cadastradas para este museu</div>

        <div class="card-body">
            <table class="table table-hover museum-panel-list">
                <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Imagem</th>
                    <th scope="col">Nome</th>
                    <th scope="col">Descrição</th>
                    <th scope="col" style="width: 15%">@</th>
                </tr>
                </thead>
                <tbody>
                <g:each in="${museum.itens}" var="item">
                    <g:each in="${item.images}" var="image">
                        <tr>
                            <th scope="row">${item.id}</th>
                            <td><g:img uri="${image?.url}" class="rounded-circle"/></td>
                            <td>${item.name}</td>
                            <td>${item.description}</td>
                            <td>
                                <g:link controller="item" action="delete" params="[id: item.id]" class="item-remove">[-] Remover Exposição</g:link>
                            </td>
                        </tr>
                    </g:each>
                </g:each>
                </tbody>
            </table>
        </div>
    </div>

        <div id="create" class="row align-items-center justify-content-center">
            <a href="/admin " class="btn btn-default">Cancelar</a>
        </div>
    </div>
</section>
<script type="text/javascript">
    $(document).ready(function(){
        $(".item-remove").click(function(){
            return confirm('Deseja realmente excluir este museu?');
        });
    });
</script>
>>>>>>> front
</body>
</html>