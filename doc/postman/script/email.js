// Gera 5 letras minúsculas aleatórias
// "email": "{{email}}",
const letras = 'abcdefghijklmnopqrstuvwxyz';
let login = '';
for (let i = 0; i < 5; i++) {
    login += letras.charAt(Math.floor(Math.random() * letras.length));
}

// Gera 2 números aleatórios
const numeros = Math.floor(Math.random() * 100).toString().padStart(2, '0');

// Combina tudo para formar o email
const email = login + numeros + '@example.com';

pm.variables.set("email", email);
