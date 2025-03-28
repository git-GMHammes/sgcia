// Criar array com todos os dados
const dados = [
    {
        "sigla": "CASACIVIL",
        "nome": "Secretaria de Estado da Casa Civil"
    },
    {
        "sigla": "SEA",
        "nome": "Secretaria de Estado do Ambiente"
    },
    {
        "sigla": "SEAAPA",
        "nome": "Secretaria de Estado de Agricultura, Pecuária, Pesca e Abastecimento"
    },
    {
        "sigla": "SEAP",
        "nome": "Secretaria de Estado de Administração Penitenciária"
    },
    {
        "sigla": "SEASDH",
        "nome": "Secretaria de Estado de Assistência Social e Direitos Humanos"
    },
    {
        "sigla": "SEC",
        "nome": "Secretaria de Estado de Cultura"
    },
    {
        "sigla": "SECT",
        "nome": "Secretaria de Estado de Ciência e Tecnologia"
    },
    {
        "sigla": "SEDEIS",
        "nome": "Secretaria de Estado de Desenvolvimento Econômico, Energia, Indústria e Serviços"
    },
    {
        "sigla": "SEEDUC",
        "nome": "Secretaria de Estado de Educação"
    },
    {
        "sigla": "SEFAZ",
        "nome": "Secretaria de Estado de Fazenda"
    },
    {
        "sigla": "SEGOV",
        "nome": "Secretaria de Estado de Governo"
    },
    {
        "sigla": "SEHAB",
        "nome": "Secretaria de Estado de Habitação"
    },
    {
        "sigla": "SEOBRAS",
        "nome": "Secretaria de Estado de Obras"
    },
    {
        "sigla": "SEPLAG",
        "nome": "Secretaria de Estado de Planejamento e Gestão"
    },
    {
        "sigla": "SESDEC",
        "nome": "Secretaria de Estado de Saúde e Defesa Civil"
    },
    {
        "sigla": "SESEG",
        "nome": "Secretaria de Estado de Segurança"
    },
    {
        "sigla": "SETE",
        "nome": "Secretaria de Estado de Turismo"
    },
    {
        "sigla": "SETRAB",
        "nome": "Secretaria de Estado do Trabalho"
    },
    {
        "sigla": "SETRANS",
        "nome": "Secretaria de Estado de Transportes"
    },
    {
        "sigla": "AGENERSA",
        "nome": "Agência Reguladora de Energia e Saneamento do Estado do Rio de Janeiro"
    },
    {
        "sigla": "AGETRANSP",
        "nome": "Agência Reguladora de Serviços Públicos de Transportes Aquaviários, Ferroviários, Metroviários e de Rodovias do Estado do Rio de Janeiro"
    },
    {
        "sigla": "DETRAN/RJ",
        "nome": "Departamento de Trânsito do Estado do Rio de Janeiro"
    },
    {
        "sigla": "LOTERJ",
        "nome": "Loteria do Estado do Rio de Janeiro"
    },
    {
        "sigla": "PROCON/RJ",
        "nome": "Autarquia de Proteção e Defesa do Consumidor"
    },
    {
        "sigla": "FEPROCON",
        "nome": "Fundo Especial de Apoio a Programas de Proteção e Defesa do Consumidor"
    },
    {
        "sigla": "CEDAE",
        "nome": "Companhia Estadual de Águas e Esgotos"
    },
    {
        "sigla": "CODIN",
        "nome": "Companhia de Desenvolvimento Industrial do Estado do Rio de Janeiro"
    },
    {
        "sigla": "JUCERJA",
        "nome": "Junta Comercial do Estado do Rio de Janeiro"
    },
    {
        "sigla": "EMOP",
        "nome": "Empresa de Obras Públicas do Estado do Rio de Janeiro"
    },
    {
        "sigla": "IEEA",
        "nome": "Instituto Estadual de Engenharia e Arquitetura"
    },
    {
        "sigla": "CEHAB",
        "nome": "Companhia Estadual de Habitação do Estado do Rio de Janeiro"
    },
    {
        "sigla": "CPERJ",
        "nome": "Conselho Penitenciário do Estado do Rio de Janeiro"
    },
    {
        "sigla": "FSC",
        "nome": "Fundação Santa Cabrini"
    },
    {
        "sigla": "FIPERJ",
        "nome": "Fundação Instituto da Pesca do Estado do Rio de Janeiro"
    },
    {
        "sigla": "DER-RJ",
        "nome": "Departamento de Estradas de Rodagem do Estado do Rio de Janeiro"
    },
    {
        "sigla": "INEA",
        "nome": "Instituto Estadual do Ambiente"
    },
    {
        "sigla": "SUDERJ",
        "nome": "Superintendência de Desportos do Estado do Rio de Janeiro"
    },
    {
        "sigla": "CGE",
        "nome": "Controladoria Geral do Estado"
    },
    {
        "sigla": "PGE",
        "nome": "Procuradoria Geral do Estado"
    },
    {
        "sigla": "DPGE",
        "nome": "Defensoria Pública Geral do Estado"
    }
];

// Selecionar um item aleatório do array
const itemAleatorio = dados[Math.floor(Math.random() * dados.length)];

// Definir as variáveis de ambiente do Postman
pm.environment.set("orgao_sigla", itemAleatorio.sigla);
pm.environment.set("orgao_nome", itemAleatorio.nome);