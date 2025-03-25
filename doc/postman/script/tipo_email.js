// Script to randomly select between "pessoal" and "institucional"
const values = ["pessoal", "institucional"];
const randomIndex = Math.floor(Math.random() * values.length);
pm.variables.set("tipo", values[randomIndex]);