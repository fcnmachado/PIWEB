<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
</head>
<body>
    <section class="main-area container-fluid">
        <header>
            <h1 class="offset-md-3 col-md-6"> cadastro de museu </h1>
            <h2 class="offset-md-3 col-md-6"> preencha os dados abaixo para cadasotro de um novo museu. </h2>
        </header>

        <g:uploadForm controller="museum" action="save">
            <div class="row">
                <div class="form-group col-md-6 offset-md-3">
                    <label for="name">Nome:</label>
                    <input type="text" class="form-control" id="name" name="name">
                </div>
            </div>
            <div class="row">
                <div class="form-group col-md-6 offset-md-3">
                    <label for="description">Descrição:</label>
                    <input type="text" class="form-control" id="description" name="description">
                </div>
            </div>
            <div class="row">
                <div class="form-group col-md-6 offset-md-3">
                    <label for="imageFile">Imagem:</label>
                    <input type="file" class="form-control" id="imageFile" name="imageFile">
                </div>
            </div>
            <div id="actions" class="row">
                <div class="col-md-6 offset-md-3">
                    <g:submitButton name="Criar" value="SALVAR" class="btn btn-primary"/>
                    <a href="/" class="btn btn-default">Cancelar</a>
                </div>
            </div>
        </g:uploadForm>
    </section>
</body>
</html>