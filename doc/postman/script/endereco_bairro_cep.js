// Criar array com os dados de endereços
const enderecos = [
    {
        "nome": "Rua Teixeira de Azevedo",
        "bairro": "Abolição",
        "cep": "20750-000"
    },
    {
        "nome": "Rua da Abolição",
        "bairro": "Abolição",
        "cep": "20756-000"
    },
    {
        "nome": "Rua Guaiuba",
        "bairro": "Acari",
        "cep": "21530-014"
    },
    {
        "nome": "Rua Acará",
        "bairro": "Acari",
        "cep": "21531-730"
    },
    {
        "nome": "Rua Vinte e Quatro de Maio",
        "bairro": "Água Santa",
        "cep": "20740-590"
    },
    {
        "nome": "Rua Torres de Oliveira",
        "bairro": "Água Santa",
        "cep": "20745-312"
    },
    {
        "nome": "Estrada das Furnas",
        "bairro": "Alto da Boa Vista",
        "cep": "20261-270"
    },
    {
        "nome": "Rua Amado Nervo",
        "bairro": "Alto da Boa Vista",
        "cep": "20535-420"
    },
    {
        "nome": "Rua Araticum",
        "bairro": "Anchieta",
        "cep": "21620-150"
    },
    {
        "nome": "Rua Belisário Pena",
        "bairro": "Anchieta",
        "cep": "21655-770"
    },
    {
        "nome": "Rua Barão de Mesquita",
        "bairro": "Andaraí",
        "cep": "20510-061"
    },
    {
        "nome": "Rua Maxwell",
        "bairro": "Andaraí",
        "cep": "20560-904"
    },
    {
        "nome": "Estrada de Jacarepaguá",
        "bairro": "Anil",
        "cep": "22750-000"
    },
    {
        "nome": "Rua Ituverava",
        "bairro": "Anil",
        "cep": "22765-847"
    },
    {
        "nome": "Rua Cambaúba",
        "bairro": "Bancários",
        "cep": "21910-040"
    },
    {
        "nome": "Rua Pio Dutra",
        "bairro": "Bancários",
        "cep": "21911-320"
    },
    {
        "nome": "Rua Fonseca",
        "bairro": "Bangu",
        "cep": "21725-470"
    },
    {
        "nome": "Rua Silva Cardoso",
        "bairro": "Bangu",
        "cep": "23095-701"
    },
    {
        "nome": "Avenida das Américas",
        "bairro": "Barra da Tijuca",
        "cep": "22611-030"
    },
    {
        "nome": "Avenida Lúcio Costa",
        "bairro": "Barra da Tijuca",
        "cep": "22795-901"
    },
    {
        "nome": "Estrada Roberto Burle Marx",
        "bairro": "Barra de Guaratiba",
        "cep": "23020-074"
    },
    {
        "nome": "Rua Parlon Siqueira",
        "bairro": "Barra de Guaratiba",
        "cep": "23030-230"
    },
    {
        "nome": "Rua Javatá",
        "bairro": "Barros Filho",
        "cep": "21512-040"
    },
    {
        "nome": "Rua Itapera",
        "bairro": "Barros Filho",
        "cep": "21665-302"
    },
    {
        "nome": "Rua Couto de Magalhães",
        "bairro": "Benfica",
        "cep": "20910-064"
    },
    {
        "nome": "Rua Senador Alencar",
        "bairro": "Benfica",
        "cep": "20973-900"
    },
    {
        "nome": "Rua João Vicente",
        "bairro": "Bento Ribeiro",
        "cep": "21330-959"
    },
    {
        "nome": "Rua Divisória",
        "bairro": "Bento Ribeiro",
        "cep": "21555-290"
    },
    {
        "nome": "Avenida Paris",
        "bairro": "Bonsucesso",
        "cep": "21010-430"
    },
    {
        "nome": "Rua Cardoso de Morais",
        "bairro": "Bonsucesso",
        "cep": "21061-970"
    },
    {
        "nome": "Rua Voluntários da Pátria",
        "bairro": "Botafogo",
        "cep": "22230-090"
    },
    {
        "nome": "Rua São Clemente",
        "bairro": "Botafogo",
        "cep": "22290-973"
    },
    {
        "nome": "Rua Ibiapina",
        "bairro": "Brás de Pina",
        "cep": "21215-560"
    },
    {
        "nome": "Rua Jaboticabal",
        "bairro": "Brás de Pina",
        "cep": "21250-001"
    },
    {
        "nome": "Rua Cachambi",
        "bairro": "Cachambi",
        "cep": "20770-460"
    },
    {
        "nome": "Rua Ferreira de Andrade",
        "bairro": "Cachambi",
        "cep": "20785-295"
    },
    {
        "nome": "Estrada do Cacuia",
        "bairro": "Cacuia",
        "cep": "21921-000"
    },
    {
        "nome": "Rua Jaime Perdigão",
        "bairro": "Cacuia",
        "cep": "21931-000"
    },
    {
        "nome": "Avenida Brasil",
        "bairro": "Caju",
        "cep": "20930-390"
    },
    {
        "nome": "Rua General Sampaio",
        "bairro": "Caju",
        "cep": "20932-580"
    },
    {
        "nome": "Estrada dos Bandeirantes",
        "bairro": "Camorim",
        "cep": "22780-000"
    },
    {
        "nome": "Rua Pedro Calmon",
        "bairro": "Camorim",
        "cep": "22780-160"
    }
];

// Selecionar um endereço aleatório
const enderecoAleatorio = enderecos[Math.floor(Math.random() * enderecos.length)];

// Concatenar os dados no formato desejado
const enderecoCompleto = `${enderecoAleatorio.nome}, ${enderecoAleatorio.bairro}, CEP: ${enderecoAleatorio.cep}`;

// Definir a variável de ambiente do Postman
pm.environment.set("endereco", enderecoCompleto);