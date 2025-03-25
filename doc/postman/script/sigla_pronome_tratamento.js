// Sigla e pronome de tratamento

// Define um array com os pronomes de tratamento no formato "X/Y"
const sigla_pronome_tratamento = ["Sr/Sra", "Dr/Dra", "Ilmo/Ilma", "Exmo/Exma"];

// Função que retorna um valor aleatório do array
function random() {
    // Gera um índice aleatório entre 0 e o comprimento do array - 1
    const indiceAleatorio = Math.floor(Math.random() * sigla_pronome_tratamento.length);
    // Retorna o elemento do array no índice gerado
    return sigla_pronome_tratamento[indiceAleatorio];
}

// Obter um pronome aleatório
const pronomeAleatorio = random();

// Salva no ambiente do Postman para uso posterior
pm.environment.set("pronome_aleatorio", pronomeAleatorio);

// Exibe no console para verificação
console.log("Pronome de Tratamento Selecionado:", pronomeAleatorio);