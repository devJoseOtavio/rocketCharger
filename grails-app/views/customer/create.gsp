<html>
    <head>
        <title>Create customer</title>
        <asset:javascript src="applications/applicationForm.js"/>
    </head>
    <body>
        <form data-redirect="${ g.createLink(controller: "customer", action: "customerPage") }" 
              data-url="${ g.createLink(controller: "customer", action: "save") }"> 
            <input type="text" name="name" id="name" placeholder="Ex: João Da Silva" required><br>
            <input type="text" name="cpfCnpj" id="cpfCnpj" placeholder="Informe o CPF/CNPJ" required><br>
            <input type="email" name="email" id="email" placeholder="Ex: email@meuprovedor.com" required><br>
            <input type="text" name="postalCode" id="postalCode" placeholder="CEP" required><br>
            <input type="text" name="address" id="address" placeholder="Endereço" required><br>
            <input type="text" name="district" id="district" placeholder="Bairro" required><br>
            <input type="text" name="city" id="city" placeholder="Cidade" required><br>
            <input type="text" name="state" id="state" placeholder="Estado" required><br>
            <input hidden value="${customerId}" name="customer" id="customer">
            <button type="submit">Criar</button>
            <button type="reset" class="js-cancel-button">Cancelar</button>
        </form>
    </body>