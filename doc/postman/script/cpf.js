// Função para gerar um número aleatório entre min e max

function randomNumber(min, max) {
    return Math.floor(Math.random() * (max - min + 1)) + min;
}

// Função para calcular dígito verificador do CPF
function calculateDigit(digits) {
    let sum = 0;
    let weight = digits.length + 1;
    
    for(let i = 0; i < digits.length; i++) {
        sum += digits[i] * weight;
        weight--;
    }
    
    const digit = 11 - (sum % 11);
    return digit > 9 ? 0 : digit;
}

// Função principal para gerar CPF com máscara
function generateFormattedCPF() {
    // Gera os 9 primeiros dígitos aleatórios
    const cpfArray = [];
    for(let i = 0; i < 9; i++) {
        cpfArray.push(randomNumber(0, 9));
    }
    
    // Calcula primeiro dígito verificador
    const digit1 = calculateDigit(cpfArray);
    cpfArray.push(digit1);
    
    // Calcula segundo dígito verificador
    const digit2 = calculateDigit(cpfArray);
    cpfArray.push(digit2);
    
    // Formata o CPF com a máscara
    const cpf = cpfArray.join('');
    return cpf.replace(/(\d{3})(\d{3})(\d{3})(\d{2})/, '$1.$2.$3-$4');
}

// Para usar no Postman como variável de ambiente ou global:
pm.globals.set("cpf", generateFormattedCPF());

// Para usar em scripts de teste:
const cpf = generateFormattedCPF();
console.log(cpf); // Exemplo de saída: 123.456.789-09