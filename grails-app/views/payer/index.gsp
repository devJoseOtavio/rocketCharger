
<!DOCTYPE html>
<html lang="pt-br">
<meta name="layout" content="main">
<head>
    <title>Gerenciamento de pagamentos</title>
</head>
<body>
    
    <div>
        <g:link controller="customer" action="customerPage" update="divForm" params='${customer.id}'>Pagina inicial</g:link>
    </div>

    <div id="divLista">
        <g:render template="list" model="[payerList: payerList]"></g:render>
    </div>
    
    <div id="divForm"></div>
    <g:paginate total="${totalCount}" controller="payer" action="index" params="${params}" next="Próximo" prev="Anterior" max="2" />
    
</body>
</html>