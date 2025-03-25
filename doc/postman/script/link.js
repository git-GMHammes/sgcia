// Campo Link: "link": "{{link}}",
const opcoes = ["Crítico", "Básico"];
const opcaoAleatoria = opcoes[Math.floor(Math.random() * opcoes.length)];
pm.variables.set("link", opcaoAleatoria);