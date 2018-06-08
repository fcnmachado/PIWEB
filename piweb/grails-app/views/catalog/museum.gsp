<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
</head>
<body>
<header class="masthead text-center text-white" style="background-image: url('${museum.image?.url}')">
    <div class="masthead-content">
        <div class="container">
            <h1 class="masthead-heading mb-0">${museum.name}</h1>
            <a id="seealso" href="#museums" class="btn btn-primary btn-xl rounded-pill mt-5">Veja Mais</a>
        </div>
    </div>
</header>

<div id="museums">
    <h1 class="no-results">
        ${museum.description}
    </h1>

    <g:if test="${!museum?.itens?.size()}">
        <p class="no-results">
            <strong> =( </strong>
            Nenhuma exposição cadastrada neste museu.
        </p>
    </g:if>

    <g:each in="${museum?.itens}" status="i" var="it">
        <section>
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-6 ${ (i % 2) == 0 ? 'order-lg-2' : ''}">
                        <div class="p-5">
                            <img src="${it.images[0]?.url}" class="img-fluid rounded-circle muesum-img" alt="${it.name}" />
                        </div>
                    </div>
                    <div class="col-lg-6 ${ (i % 2) == 0 ? 'order-lg-1' : ''}">
                        <div class="p-5">
                            <h2 class="display-4">${it.name}</h2>
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