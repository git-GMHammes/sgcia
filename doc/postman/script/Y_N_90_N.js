// Gerar uma probabilidade entre 0 e 1
const probabilidade = Math.random();

// Se for menor que 0.9, retorna "Y" (90% de chance)
const areaRisco = probabilidade < 0.1 ? "Y" : "N";

// Definir a variável no ambiente do Postman
pm.environment.set("area_risco", areaRisco);
