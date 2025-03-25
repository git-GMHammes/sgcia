const velocidades = [4000, 2000, 200, 100, 50, 30, 20, 10, 500];
const velocidadeAleatoria = velocidades[Math.floor(Math.random() * velocidades.length)];
pm.variables.set("velocidade", velocidadeAleatoria);