// "custo_unitario": "{{custo_unitario}}",
const custos = [5399.99, 4649.99, 3499.97, 1500.00, 41637.75, 48792.59, 5934.11, 1011.00, 982.00, 2749.98, 1300.00, 2750.00, 3499.97, 5770.61, 14440.58, 11644.71, 21681.66, 19436.34, 33157.74, 27496.70];
const custoAleatorio = custos[Math.floor(Math.random() * custos.length)];
pm.variables.set("custo_unitario", custoAleatorio);