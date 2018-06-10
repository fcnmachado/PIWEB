<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
</head>
<body>
<header class="masthead text-center text-white">
    <div class="masthead-content">
        <div class="container">
            <h1 class="masthead-heading mb-0">Seu Museu Favorito</h1>
            <h2 class="masthead-subheading mb-0">Sem Sair de Casa</h2>
            <a id="seealso" href="#museums" class="btn btn-primary btn-xl rounded-pill mt-5">Veja Mais</a>
        </div>
    </div>
</header>

<div id="museums">
    <div class="museum-search">
        <g:form controller="catalog" action="home" method="get">
            <input type="text" name="q" placeholder="Buscar Museu" class="text-input col-md-4" value="${params.q}">
            <button type="submit"  class="btn-primary btn">BUSCAR</button>

            <g:if test="${params.q}">
                <p class="results-count-text">
                    ${museums?.size()} resultados encontrados para "${params.q}"
                </p>
            </g:if>
        </g:form>
    </div>

    <g:if test="${!museums?.size()}">
        <p class="no-results">
            <strong> =( </strong>
            Nenhum Museu Encontrado.
        </p>
    </g:if>

    <g:each in="${museums}" status="i" var="it">
        <section>
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-6 ${ (i % 2) == 0 ? 'order-lg-2' : ''}">
                        <div class="p-5">
                            <g:link controller="catalog" action="museum" id="${it.id}">
                                <img src="${it.image?.url}" class="img-fluid rounded-circle muesum-img" alt="${it.name}" />
                            </g:link>
                        </div>
                    </div>
                    <div class="col-lg-6 ${ (i % 2) == 0 ? 'order-lg-1' : ''}">
                        <div class="p-5">
                            <g:link controller="catalog" action="museum" id="${it.id}" class="museum-name">
                                <h2 class="display-4">${it.name}</h2>
                            </g:link>
                            <p>${it.description}</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </g:each>
</div>

<script type="text/javascript">
    $(document).ready(function(){
        $("#seealso").on('click', function(event) {
            event.preventDefault();
            var hash = this.hash;
            $('html, body').animate({
                scrollTop: $(hash).offset().top - 120
            }, 800, function(){ });
        });
    });

    <g:if test="${params.q}">
    setTimeout(function () {
        $("#seealso").click()
    }, 100);
    </g:if>
</script>
</body>
</html>