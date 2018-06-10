<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
</head>
<body>

<section class="main-area container-fluid">
    <header>
        <h1 class="offset-md-3 col-md-6"> PAINEL ADMINISTRATIVO </h1>

        <h2 class="offset-md-3 col-md-6"> listagem e administração de museus online </h2>
    </header>


    <div class="col-md-10 offset-md-1 text-md-right mb-3">
        <g:link controller="museum" action="create">[+] Criar Novo Museu</g:link>
    </div>


    <div class="card bg-light mb-3 col-md-10 offset-md-1">
        <div class="card-body">
            <table class="table table-hover museum-panel-list">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Imagem</th>
                        <th scope="col">Museu</th>
                        <th scope="col">Descrição</th>
                        <th scope="col" style="width: 15%">@</th>
                    </tr>
                </thead>
                <tbody>
                    <g:each in="${user.museums}">
                        <tr>
                            <th scope="row"><g:link controller="museum" action="edit" id="${it.id}">${it.id}</g:link></th>
                            <td><g:img uri="${it.image?.url}" class="rounded-circle"/></td>
                            <td><g:link controller="museum" action="edit" id="${it.id}">${it.name}</g:link></td>
                            <td>${it.description}</td>
                            <td>
                                <p>
                                    <g:link controller="museum" action="delete" params="[id: it.id]" class="museum-remove">[-] Remover Museu</g:link>
                                </p>
                                <p>
                                    <g:link controller="item" action="form" params="[museumId: it.id]">[+] Adicionar Exposição</g:link>
                                </p>
                            </td>
                        </tr>
                    </g:each>
                </tbody>
            </table>
        </div>
    </div>
</section>

<script type="text/javascript">
    $(document).ready(function(){
        $(".museum-remove").click(function(){
            return confirm('Deseja realmente excluir este museu?');
        });
    });
</script>
</body>
</html>