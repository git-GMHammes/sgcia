// Função para gerar nome aleatório em dois formatos possíveis
const generateRandomNome = () => {
    // Escolhe aleatoriamente entre os dois formatos (0 ou 1)
    const formatType = Math.floor(Math.random() * 2);

    let result = "";

    if (formatType === 0) {
        // Formato: RJO/IP/000000
        const randomDigits = String(Math.floor(Math.random() * 900000) + 100000);
        result = `RJO/IP/${randomDigits}`;
    } else {
        // Formato: RJO CRH RJO J3O DP*V 0000X
        const randomLastDigit = Math.floor(Math.random() * 9) + 1; // 1-9
        result = `RJO CRH RJO J3O DP*V 0000${randomLastDigit}`;
    }

    return {
        "nome": result
    };
};

// Exemplo de uso no Postman como variável de ambiente ou global
pm.environment.set("nome_circuito", generateRandomNome().nome);

// Exemplo de uso como script standalone
console.log(generateRandomNome());

// Exemplo gerando múltiplos nomes
console.log("Exemplos de nomes gerados:");
for (let i = 0; i < 5; i++) {
    console.log(generateRandomNome());
}

// Função para forçar um formato específico (caso necessário)
const generateSpecificFormat = (format) => {
    if (format === 'RJO/IP') {
        const randomDigits = String(Math.floor(Math.random() * 900000) + 100000);
        return {
            "nome": `RJO/IP/${randomDigits}`
        };
    } else if (format === 'RJO CRH') {
        const randomLastDigit = Math.floor(Math.random() * 9) + 1;
        return {
            "nome": `RJO CRH RJO J3O DP*V 0000${randomLastDigit}`
        };
    }
    throw new Error('Formato inválido');
};