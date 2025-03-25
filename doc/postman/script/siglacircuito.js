// Função para gerar siglas aleatórias de órgãos governamentais
const generateRandomSigla = () => {
    // Array com siglas de órgãos e agências governamentais
    const siglas = [
        // Centros de Controle e Segurança
        "CICC", // Centro Integrado de Comando e Controle
        "CTIR", // Centro de Tratamento de Incidentes de Redes
        "CSIC", // Centro de Segurança da Informação e Comunicações
        
        // Agências Reguladoras
        "ANAC", // Agência Nacional de Aviação Civil
        "ABIN", // Agência Brasileira de Inteligência
        "CIGE", // Centro Integrado de Gestão Estratégica
        "CGSI", // Comitê Gestor de Segurança da Informação
        
        // Órgãos de Telecom e Tecnologia
        "CETI", // Conselho Estadual de Tecnologia da Informação
        "CGTI", // Coordenação Geral de Tecnologia da Informação
        "CTIC", // Centro de Tecnologia da Informação e Comunicação
        
        // Segurança e Defesa
        "CIGA", // Comitê Interministerial para Governança Digital
        "COPE", // Centro de Operações Policiais Especiais
        "CODI", // Centro de Operações de Defesa Interna
        "CERT", // Centro de Estudos, Resposta e Tratamento de Incidentes
        
        // Regulação e Controle
        "CDIC", // Centro de Defesa da Informação e Comunicações
        "ANATEL", // Agência Nacional de Telecomunicações
        "CISI" // Centro Integrado de Segurança Institucional
    ];
    
    // Seleciona uma sigla aleatória do array
    const randomIndex = Math.floor(Math.random() * siglas.length);
    const selectedSigla = siglas[randomIndex];
    
    return {
        "sigla": selectedSigla
    };
};

// Exemplo de uso no Postman como variável de ambiente ou global
pm.environment.set("sigla", generateRandomSigla().sigla);

// Exemplo de uso como script standalone
console.log(generateRandomSigla());

// Exemplo gerando múltiplas siglas
console.log("Exemplos de siglas geradas:");
for (let i = 0; i < 5; i++) {
    console.log(generateRandomSigla());
}