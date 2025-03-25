// Arrays de possíveis valores para cada variável
const regioes = [
    "Urbana", "Rural", "Comunidade", "Periferia", "Subúrbio", "Zona Norte", "Zona Sul",
    "Área Central", "Zona Leste", "Área Metropolitana"
];

const tiposImovel = [
    "Casa", "Apartamento", "Conjunto Habitacional", "Escola", "Delegacia", "Hospital",
    "Prédio Comercial", "Loja", "Shopping", "Centro Comercial", "Galpão", "proximo à Fazenda",
    "Ao lado da Chácara", "Sobreloja da Clínica", "Sobreloja da Restaurante", "Sobreloja da concessionária da Volkswagen", "Ao lado do Armazém", "Ao da Indústria de Plastico", "Sobreloja da Farmácia",
    "Ao lado do Posto de Gasolina", "Sobreloja da Lanchonete", "Ao lado do Estádio Olimpico", "No terreno da Igreja", "Centro de Eventos", "Sobreloja da Teatro",
    "Sobreloja da Museu", "Sobreloja da Biblioteca", "Sobreloja do instituto", "Sede Administrativa", "Sobreloja do Estacionamento"
];

const informacoesAcesso = [
    "Acesso pela Rua das Palmeiras, número 123", "Entrada pela Avenida Brasil, número 456",
    "Próximo à esquina com a Rua 15", "Acesso pela porta lateral",
    "Entrada pelo fundo, lado esquerdo", "Acesso pela garagem", "Portão principal aberto",
    "Acesso pela sobreloja", "Entrada pela Rua do Comercio, ao lado da Farmácia",
    "Entrada principal, porta número 1", "Acesso pelo corredor lateral",
    "Por trás do prédio, ao lado do estacionamento", "Entrada ao lado do ponto de ônibus",
    "Acesso pelo portão de trás", "Ao lado do supermercado", "Portão principal fechado",
    "Entrada pela lateral esquerda", "Acesso pela Rua das Flores, com estacionamento",
    "Por trás da escola, ao lado do campo", "Entrada pelo térreo", "Acesso direto pela praça",
    "Entrada pelos fundos", "Acesso por um caminho estreito", "Na esquina com a Avenida X",
    "Entrada pela praça central", "Acesso pelo portão 2", "Entrar pela rua do mercado",
    "Acesso através do estacionamento coberto", "Entrada pela escada lateral",
    "Acesso pelo túnel subterrâneo"
];

// Função para selecionar valores aleatórios de cada array
function getRandomValue(array) {
    return array[Math.floor(Math.random() * array.length)];
}

// Gerar 30 valores aleatórios
const resultados = [];
for (let i = 0; i < 30; i++) {
    const regiao = getRandomValue(regioes);
    const tipoImovel = getRandomValue(tiposImovel);
    const informacaoAcesso = getRandomValue(informacoesAcesso);

    resultados.push({
        "regiao": regiao,
        "tipo_imovel": tipoImovel,
        "informacao_acesso": informacaoAcesso
    });
}

// Definir as variáveis no ambiente do Postman
resultados.forEach((resultado, index) => {
    // No final do script, adicione isso para definir as variáveis simples
    pm.environment.set("regiao", getRandomValue(regioes));
    pm.environment.set("tipo_imovel", getRandomValue(tiposImovel));
    pm.environment.set("informacao_acesso", getRandomValue(informacoesAcesso));
});
