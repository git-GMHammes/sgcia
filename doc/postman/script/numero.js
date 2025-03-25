// Definir probabilidade de retornar número ou "S/N"
const probabilidade = Math.random(); // Gera um número entre 0 e 1

// Verifica se será número (90%) ou "S/N" (10%)
const numero = probabilidade < 0.9 
    ? Math.floor(Math.random() * 9999) + 1  // Número aleatório entre 1 e 9999
    : "S/N";  // Sem número

// Definir a variável no ambiente do Postman
pm.environment.set("numero", numero);
