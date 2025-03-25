// tipo_servico": "{{tipo_servico}}
const tipos = ["Lote 1 MPLS", "Lote 2 IP"];
const tipoAleatorio = tipos[Math.floor(Math.random() * tipos.length)];
pm.variables.set("tipo_servico", tipoAleatorio);