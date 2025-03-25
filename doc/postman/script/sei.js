// Função para gerar número "SEI": "{{SEI}}",
const generateRandomSEI = () => {
    // Parte fixa do início
    const prefix = "SEI-430002";
    
    // Gera 6 dígitos aleatórios
    const randomDigits = Math.floor(Math.random() * 900000) + 100000;
    
    // Obtém o ano atual
    const currentYear = new Date().getFullYear();
    
    // Monta o número SEI completo
    const seiNumber = `${prefix}/${randomDigits}/${currentYear}`;
    
    // Retorna no formato esperado para o Postman
    return {
        "SEI": seiNumber
    };
};

// Exemplo de uso no Postman como variável de ambiente ou global
pm.environment.set("sei", generateRandomSEI().SEI);

// Exemplo de uso como script standalone
console.log(generateRandomSEI());

// Exemplo de múltiplos números gerados
for (let i = 0; i < 5; i++) {
    console.log(generateRandomSEI());
}

