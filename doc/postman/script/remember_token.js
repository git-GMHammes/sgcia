// Função para gerar um token aleatório seguro
function generateRememberToken(length = 40) {
    const characters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
    let token = '';
    for (let i = 0; i < length; i++) {
        token += characters.charAt(Math.floor(Math.random() * characters.length));
    }
    return token;
}

// Gera o token e salva no ambiente do Postman
const remember_token = generateRememberToken();
pm.environment.set("remember_token", remember_token);

// Exibe no console para verificação
console.log("Remember Token:", remember_token);
