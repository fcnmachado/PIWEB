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

        <div class="col-md-6 offset-md-3">

            <div class="card bg-light mb-3">
                <div class="card-header">Preencha os campos abaixo com os dados dos museus</div>
                <div class="card-body">
                    <g:uploadForm controller="museum" action="save">
                        <div class="row">
                            <div class="form-group col-md-6 offset-md-3">
                                <label for="imageFile">Imagem:</label>
                                <input type="file" class="form-control" id="imageFile" name="imageFile">
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col-md-6 offset-md-3">
                                <label for="name">Nome:</label>
                                <input type="text" class="form-control" id="name" name="name">
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col-md-6 offset-md-3">
                                <label for="description">Descrição:</label>
                                <textarea class="form-control" id="description" name="description" rows="5"></textarea>
                            </div>
                        </div>
                        <div id="submit" class="row align-items-center justify-content-center">
                            <g:submitButton name="Cadastrar" value="CADASTRAR" class="btn btn-primary"/>
                        </div>
                    </g:uploadForm>
                </div>
            </div>

            <div id="create" class="row align-items-center justify-content-center">
                <a href="/admin " class="btn btn-default">Cancelar</a>
            </div>
        </div>
    </section>
</body>
</html>