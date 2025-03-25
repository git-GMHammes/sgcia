/**
 * Função para gerar um CNPJ válido aleatório sem formatação
 * @returns {string} CNPJ sem formatação (apenas números)
 */
function gerarCNPJFake() {
    // Array para armazenar os dígitos do CNPJ
    const cnpj = [];
    
    // Gera os 8 primeiros dígitos aleatórios
    for (let i = 0; i < 8; i++) {
        cnpj.push(Math.floor(Math.random() * 10));
    }
    
    // Filial - 4 dígitos (geralmente 0001 para matriz)
    cnpj.push(0);
    cnpj.push(0);
    cnpj.push(0);
    cnpj.push(1);

    // Calcula o primeiro dígito verificador
    let soma = 0;
    let peso = 5;
    
    for (let i = 0; i < 12; i++) {
        soma += cnpj[i] * peso;
        peso = (peso === 2) ? 9 : peso - 1;
    }
    
    let resto = soma % 11;
    const dv1 = (resto < 2) ? 0 : 11 - resto;
    cnpj.push(dv1);
    
    // Calcula o segundo dígito verificador
    soma = 0;
    peso = 6;
    
    for (let i = 0; i < 13; i++) {
        soma += cnpj[i] * peso;
        peso = (peso === 2) ? 9 : peso - 1;
    }
    
    resto = soma % 11;
    const dv2 = (resto < 2) ? 0 : 11 - resto;
    cnpj.push(dv2);
    
    // Retorna o CNPJ como string sem formatação
    return cnpj.join('');
}

/**
 * Função para aplicar máscara a um CNPJ
 * @param {string} cnpj - CNPJ sem formatação
 * @returns {string} CNPJ formatado (xx.xxx.xxx/xxxx-xx)
 */
function aplicarMascaraCNPJ(cnpj) {
    return cnpj.replace(/^(\d{2})(\d{3})(\d{3})(\d{4})(\d{2})$/, "$1.$2.$3/$4-$5");
}

// Gerar CNPJ sem formatação
const cnpjSemFormatacao = gerarCNPJFake();

// Aplicar máscara para visualização
const cnpjFormatado = aplicarMascaraCNPJ(cnpjSemFormatacao);

// Exibir ambas versões no console
console.log(`CNPJ sem máscara: "${cnpjSemFormatacao}"`);
console.log(`CNPJ com máscara: "${cnpjFormatado}"`);
console.log(`Para JSON: "cnpj_cpf": "${cnpjSemFormatacao}"`);

// Definir as variáveis de ambiente no Postman
pm.environment.set("cnpj", cnpjSemFormatacao);
pm.environment.set("cnpjFormatado", cnpjFormatado);

// Exemplo de como usar no body do Postman:
// "cnpj_cpf": "{{cnpj}}" - sem máscara
// "cnpj_cpf": "{{cnpjFormatado}}" - com máscara
