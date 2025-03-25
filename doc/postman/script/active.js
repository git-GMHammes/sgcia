
// Gerar número aleatório 0 ou 1
// "active": "{{active}}",
const activeStatus = Math.floor(Math.random() * 2);

// Definir a variável de ambiente do Postman
pm.environment.set("active", activeStatus);
