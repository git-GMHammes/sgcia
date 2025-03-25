// Data atual como referência
// {{data_inicio}}
// {{data_fim}}
const hoje = new Date();

// Data início: até 60 anos no passado
const sessenta_anos_atras = new Date();
sessenta_anos_atras.setFullYear(hoje.getFullYear() - 60);

const timestamp_inicio = sessenta_anos_atras.getTime() + Math.random() * (hoje.getTime() - sessenta_anos_atras.getTime());
const data_inicio = new Date(timestamp_inicio);

// Data fim: até 7 anos no futuro
const sete_anos_frente = new Date();
sete_anos_frente.setFullYear(hoje.getFullYear() + 7);

const timestamp_fim = hoje.getTime() + Math.random() * (sete_anos_frente.getTime() - hoje.getTime());
const data_fim = new Date(timestamp_fim);

// Formatando as datas para o padrão ISO (YYYY-MM-DD)
pm.variables.set("data_inicio", data_inicio.toISOString().split('T')[0]);
pm.variables.set("data_fim", data_fim.toISOString().split('T')[0]);