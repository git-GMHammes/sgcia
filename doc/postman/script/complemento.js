// Criar um array com 30 opções de complementos para endereços
const complementos = [
    "Apto 101",
    "Apto 202",
    "Apto 303",
    "Apto 404",
    "Apto 505",
    "Bloco A Apto 10",
    "Bloco B Apto 20",
    "Bloco C Apto 30",
    "Casa 1",
    "Casa 2",
    "Fundos",
    "Loja 5",
    "Sala 101",
    "Sala 202",
    "Sala 303",
    "Cobertura",
    "Térreo",
    "Subsolo",
    "Casa dos fundos",
    "2º andar",
    "3º andar",
    "Edifício Central",
    "Condomínio Verde",
    "Conjunto 5",
    "Loja 10",
    "Galpão 3",
    "Sobrado",
    "Anexo",
    "Mezanino",
    "Kitnet 2"
];

// Selecionar um complemento aleatório do array
const complementoAleatorio = complementos[Math.floor(Math.random() * complementos.length)];

// Definir o valor como uma variável do Postman
pm.variables.set("complemento", complementoAleatorio);

// Opcional: Mostrar no console qual complemento foi selecionado
console.log("Complemento selecionado: " + complementoAleatorio);