// Array com os DDDs permitidos
// "telefone": "{{telefone}}"
const ddds = ['21', '22', '24'];

// Seleciona um DDD aleatório
const ddd = ddds[Math.floor(Math.random() * ddds.length)];

// Gera os 8 dígitos do telefone
const primeiraParteTelefone = Math.floor(Math.random() * 10000).toString().padStart(4, '0');
const segundaParteTelefone = Math.floor(Math.random() * 10000).toString().padStart(4, '0');

// Monta o telefone no formato (XX) XXXX-XXXX
const telefone = `(${ddd}) ${primeiraParteTelefone}-${segundaParteTelefone}`;

pm.variables.set("telefone", telefone);