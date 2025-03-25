const pontosReferencia = [
    "Próximo ao Mercado Central",
    "Em frente à Praça da Matriz",
    "Ao lado da Escola Municipal São José",
    "Perto do Posto de Gasolina Shell",
    "Atrás do Shopping Central",
    "Esquina com a Rua das Flores",
    "Ao lado da Padaria Pão de Ouro",
    "Em frente ao Hospital Geral",
    "Próximo à Estação de Trem",
    "Ao lado do Banco do Brasil",
    "Atrás da Igreja Matriz",
    "Em frente ao ponto de ônibus",
    "Perto do Supermercado Extra",
    "Na esquina com a Avenida Brasil",
    "Ao lado da Farmácia Popular",
    "Em frente ao Estádio Municipal",
    "Atrás do Teatro Municipal",
    "Próximo à Universidade Federal",
    "Ao lado do Cartório Central",
    "Em frente à Academia SmartFit"
];

// Seleciona um ponto de referência aleatório
const pontoReferenciaAleatorio = pontosReferencia[Math.floor(Math.random() * pontosReferencia.length)];

// Define a variável no ambiente do Postman
pm.environment.set("ponto_referencia", pontoReferenciaAleatorio);
