// Coleção de empresas (usando apenas um exemplo como solicitado)
const empresas = [
    {
        "sigla": "CLARO",
        "nome": "Claro S.A."
    },
    {
        "sigla": "TNP",
        "nome": "TODOS NOS PODEMOS LTDA"
    },
    {
        "sigla": "NETFLIX",
        "nome": "NETFLIX ENTRETENIMENTO BRASIL LTDA"
    },
    {
        "sigla": "MOSAICO",
        "nome": "MOSAICO TECNOLOGIA AO CONSUMIDOR SA"
    },
    {
        "sigla": "TERRA",
        "nome": "TERRA NETWORKS BRASIL LTDA"
    },
    {
        "sigla": "TC",
        "nome": "TC SA"
    },
    {
        "sigla": "BYTEDANCE",
        "nome": "BYTEDANCE BRASIL TECNOLOGIA LTDA"
    },
    {
        "sigla": "MELIUZ",
        "nome": "MELIUZ SA"
    },
    {
        "sigla": "BRASMOTOR",
        "nome": "BRASMOTOR LTDA"
    },
    {
        "sigla": "GUPY",
        "nome": "GUPY TECNOLOGIA EM RECRUTAMENTO LTDA"
    },
    {
        "sigla": "XBRASIL",
        "nome": "X BRASIL INTERNET LTDA"
    },
    {
        "sigla": "MOMENTO",
        "nome": "MOMENTO EDITORIAL LTDA"
    },
    {
        "sigla": "LIGUELISTA",
        "nome": "LIGUELISTA SERVIÇOS DE INTERNET LTDA"
    },
    {
        "sigla": "MILKPOINT",
        "nome": "MILKPOINT VENTURES SERVIÇOS DE INTELIGÊNCIA DE MERCADO LTDA"
    },
    {
        "sigla": "BIKE123",
        "nome": "BIKE123 TECNOLOGIA LTDA"
    },
    {
        "sigla": "QUALP",
        "nome": "QUALP PORTAL DE INTERNET LTDA"
    },
    {
        "sigla": "JUNTOS",
        "nome": "JUNTOS ENERGIA SA"
    },
    {
        "sigla": "SBRILL",
        "nome": "SBRILL COMUNICAÇÃO LTDA"
    },
    {
        "sigla": "BEAIRAG",
        "nome": "FTO AGENCIA LTDA"
    },
    {
        "sigla": "MNZ",
        "nome": "MNZ LTDA"
    },
    {
        "sigla": "CAJAMARNET",
        "nome": "CAJAMARNET SERVIÇOS DE INTERNET LTDA"
    },
    {
        "sigla": "EMBRATEL",
        "nome": "EMBRATEL"
    },
    {
        "sigla": "OI",
        "nome": "OI S.A."
    },
    {
        "sigla": "ÁVATO",
        "nome": "ÁVATO TECNOLOGIA"
    },
    {
        "sigla": "DATORA",
        "nome": "GRUPO DATORA"
    },
    {
        "sigla": "TRI",
        "nome": "TRI TELECOM"
    },
    {
        "sigla": "VIVO",
        "nome": "VIVO S.A."
    },
    {
        "sigla": "CLARO",
        "nome": "CLARO S.A."
    },
    {
        "sigla": "TIM",
        "nome": "TIM S.A."
    },
    {
        "sigla": "NET",
        "nome": "NET SERVIÇOS DE COMUNICAÇÃO S.A."
    },
    {
        "sigla": "GVT",
        "nome": "GVT S.A."
    },
    {
        "sigla": "OI",
        "nome": "OI S.A."
    },
    {
        "sigla": "VIVO",
        "nome": "VIVO S.A."
    },
    {
        "sigla": "CLARO",
        "nome": "CLARO S.A."
    },
    {
        "sigla": "TIM",
        "nome": "TIM S.A."
    },
    {
        "sigla": "NET",
        "nome": "NET SERVIÇOS DE COMUNICAÇÃO S.A."
    },
    {
        "sigla": "GVT",
        "nome": "GVT S.A."
    },
    {
        "sigla": "OI",
        "nome": "OI S.A."
    },
    {
        "sigla": "VIVO",
        "nome": "VIVO S.A."
    },
    {
        "sigla": "CLARO",
        "nome": "CLARO S.A."
    },
    {
        "sigla": "TIM",
        "nome": "TIM S.A."
    },
    {
        "sigla": "NET",
        "nome": "NET SERVIÇOS DE COMUNICAÇÃO S.A."
    },
    {
        "sigla": "GVT",
        "nome": "GVT S.A."
    },
    {
        "sigla": "OI",
        "nome": "OI S.A."
    },
    {
        "sigla": "VIVO",
        "nome": "VIVO S.A."
    },
    {
        "sigla": "CLARO",
        "nome": "CLARO S.A."
    },
    {
        "sigla": "TIM",
        "nome": "TIM S.A."
    },
    {
        "sigla": "NET",
        "nome": "NET SERVIÇOS DE COMUNICAÇÃO S.A."
    },
    {
        "sigla": "GVT",
        "nome": "GVT S.A."
    },
    {
        "sigla": "OI",
        "nome": "OI S.A."
    },
    {
        "sigla": "VIVO",
        "nome": "VIVO S.A."
    },
    {
        "sigla": "CLARO",
        "nome": "CLARO S.A."
    },
    {
        "sigla": "TIM",
        "nome": "TIM S.A."
    },
    {
        "sigla": "NET",
        "nome": "NET SERVIÇOS DE COMUNICAÇÃO S.A."
    },
    {
        "sigla": "GVT",
        "nome": "GVT S.A."
    },
    {
        "sigla": "STARLINK",
        "nome": "Starlink Internet Services"
    },
    {
        "sigla": "UOL",
        "nome": "Universo Online"
    },
    {
        "sigla": "BOL",
        "nome": "Brasil Online"
    },
    {
        "sigla": "IG",
        "nome": "Internet Group do Brasil"
    },
    {
        "sigla": "GVT",
        "nome": "Global Village Telecom"
    },
    {
        "sigla": "OI",
        "nome": "Oi S.A."
    },
    {
        "sigla": "VIVO",
        "nome": "Vivo S.A."
    },
    {
        "sigla": "TIM",
        "nome": "TIM S.A."
    },
    {
        "sigla": "NET",
        "nome": "NET Serviços de Comunicação S.A."
    },
    {
        "sigla": "GVT",
        "nome": "GVT S.A."
    },
    {
        "sigla": "EMBRATEL",
        "nome": "Embratel"
    },
    {
        "sigla": "NETFLIX",
        "nome": "Netflix Inc."
    },
    {
        "sigla": "FACEBOOK",
        "nome": "Meta Platforms, Inc."
    },
    {
        "sigla": "GOOGLE",
        "nome": "Google Brasil"
    },
    {
        "sigla": "AMAZON",
        "nome": "Amazon Brasil"
    },
    {
        "sigla": "MICROSOFT",
        "nome": "Microsoft Brasil"
    },
    {
        "sigla": "SABESP",
        "nome": "SABESP - Sistema de Águas e Esgotos do Estado de São Paulo"
    },
    {
        "sigla": "OLX",
        "nome": "OLX Brasil"
    },
    {
        "sigla": "PEIXEURBANO",
        "nome": "Peixe Urbano"
    },
    {
        "sigla": "DHL",
        "nome": "DHL Express Brasil"
    },
    {
        "sigla": "PAGSEGURO",
        "nome": "PagSeguro Internet S.A."
    },
    {
        "sigla": "ML",
        "nome": "Mercado Livre"
    },
    {
        "sigla": "IPEC",
        "nome": "Instituto Brasileiro de Pesquisa e Marketing Ipec"
    },
    {
        "sigla": "CLOUD",
        "nome": "Cloud computing Brasil"
    },
    {
        "sigla": "TENCENT",
        "nome": "Tencent Brasil"
    },
    {
        "sigla": "BING",
        "nome": "Bing Brasil"
    },
    {
        "sigla": "TIKTOK",
        "nome": "TikTok Inc."
    },
    {
        "sigla": "STARTELECOM",
        "nome": "Star Telecomunicações"
    },
    {
        "sigla": "LOJASRENNER",
        "nome": "Lojas Renner"
    },
    {
        "sigla": "XP",
        "nome": "XP Investimentos"
    },
    {
        "sigla": "SAFRA",
        "nome": "Banco Safra S.A."
    },
    {
        "sigla": "SANTANDER",
        "nome": "Santander Brasil"
    },
    {
        "sigla": "BRADESCO",
        "nome": "Banco Bradesco"
    },
    {
        "sigla": "BANCO_DO_BRASIL",
        "nome": "Banco do Brasil S.A."
    },
    {
        "sigla": "CIELO",
        "nome": "Cielo S.A."
    },
    {
        "sigla": "ZAP",
        "nome": "Zap Imóveis"
    },
    {
        "sigla": "PORTAL",
        "nome": "Portal Imobiliário"
    },
    {
        "sigla": "MOVILE",
        "nome": "Movile S.A."
    },
    {
        "sigla": "OLXBR",
        "nome": "OLX Brasil Marketplace"
    },
    {
        "sigla": "VALE",
        "nome": "Vale S.A."
    },
    {
        "sigla": "NUBANK",
        "nome": "Nubank"
    },
    {
        "sigla": "AMARO",
        "nome": "Amaro Tecnologia"
    },
    {
        "sigla": "VIVO",
        "nome": "Vivo Fibra"
    },
    {
        "sigla": "CORREIOS",
        "nome": "Correios - Empresa Brasileira de Correios e Telégrafos"
    },
    {
        "sigla": "RAKUTEN",
        "nome": "Rakuten Brasil"
    },
    {
        "sigla": "ELETROBRAS",
        "nome": "Eletrobras"
    },
    {
        "sigla": "SBT",
        "nome": "Sistema Brasileiro de Televisão"
    },
    {
        "sigla": "TVGLOBO",
        "nome": "TV Globo"
    },
    {
        "sigla": "R9",
        "nome": "R9 Telecom"
    },
    {
        "sigla": "VIVO",
        "nome": "Vivo Empresas"
    },
    {
        "sigla": "GLOBO",
        "nome": "Grupo Globo"
    },
    {
        "sigla": "CPTM",
        "nome": "Companhia Paulista de Trens Metropolitanos"
    },
    {
        "sigla": "PONTOFRIO",
        "nome": "Ponto Frio"
    },
    {
        "sigla": "LIVRARIA",
        "nome": "Livraria Cultura"
    },
    {
        "sigla": "PITANGO",
        "nome": "Pitango Venture Partners"
    },
    {
        "sigla": "JUNO",
        "nome": "Juno Engenharia"
    }
];

// Função para selecionar um nome aleatório
const getRandomNome = () => {
    const randomIndex = Math.floor(Math.random() * empresas.length);
    return empresas[randomIndex].nome;
};

// Definir a variável de ambiente no Postman
pm.environment.set("nome_empresa", getRandomNome());