// Criar array com os dados de endereços
const enderecos = [
    {
        "cep": "20031-144",
        "tipo_logradouro": "Rua",
        "logradouro": "da Assembleia",
        "bairro": "Centro",
        "cidade": "Rio de Janeiro"
    },
    {
        "cep": "20221-250",
        "tipo_logradouro": "Avenida",
        "logradouro": "Paulo de Frontin",
        "bairro": "Rio Comprido",
        "cidade": "Rio de Janeiro"
    },
    {
        "cep": "21021-250",
        "tipo_logradouro": "Rua",
        "logradouro": "Castro Alves",
        "bairro": "Bonsucesso",
        "cidade": "Rio de Janeiro"
    },
    {
        "cep": "22221-000",
        "tipo_logradouro": "Avenida",
        "logradouro": "Pasteur",
        "bairro": "Botafogo",
        "cidade": "Rio de Janeiro"
    },
    {
        "cep": "22620-172",
        "tipo_logradouro": "Rua",
        "logradouro": "Aires Saldanha",
        "bairro": "Copacabana",
        "cidade": "Rio de Janeiro"
    },
    {
        "cep": "23052-490",
        "tipo_logradouro": "Estrada",
        "logradouro": "do Mendanha",
        "bairro": "Campo Grande",
        "cidade": "Rio de Janeiro"
    },
    {
        "cep": "21530-300",
        "tipo_logradouro": "Rua",
        "logradouro": "da Matriz",
        "bairro": "Madureira",
        "cidade": "Rio de Janeiro"
    },
    {
        "cep": "21331-550",
        "tipo_logradouro": "Rua",
        "logradouro": "Dagmar da Fonseca",
        "bairro": "Méier",
        "cidade": "Rio de Janeiro"
    },
    {
        "cep": "20735-150",
        "tipo_logradouro": "Rua",
        "logradouro": "Maria Antônia",
        "bairro": "Engenho de Dentro",
        "cidade": "Rio de Janeiro"
    },
    {
        "cep": "22775-023",
        "tipo_logradouro": "Avenida",
        "logradouro": "das Américas",
        "bairro": "Barra da Tijuca",
        "cidade": "Rio de Janeiro"
    },
    {
        "cep": "22621-500",
        "tipo_logradouro": "Rua",
        "logradouro": "Visconde de Albuquerque",
        "bairro": "Leblon",
        "cidade": "Rio de Janeiro"
    },
    {
        "cep": "22010-010",
        "tipo_logradouro": "Avenida",
        "logradouro": "Atlântica",
        "bairro": "Copacabana",
        "cidade": "Rio de Janeiro"
    },
    {
        "cep": "22290-030",
        "tipo_logradouro": "Rua",
        "logradouro": "General Severiano",
        "bairro": "Botafogo",
        "cidade": "Rio de Janeiro"
    },
    {
        "cep": "22451-000",
        "tipo_logradouro": "Rua",
        "logradouro": "Marquês de São Vicente",
        "bairro": "Gávea",
        "cidade": "Rio de Janeiro"
    },
    {
        "cep": "23052-150",
        "tipo_logradouro": "Avenida",
        "logradouro": "Cesário de Melo",
        "bairro": "Campo Grande",
        "cidade": "Rio de Janeiro"
    },
    {
        "cep": "20541-162",
        "tipo_logradouro": "Rua",
        "logradouro": "Barão de Mesquita",
        "bairro": "Tijuca",
        "cidade": "Rio de Janeiro"
    },
    {
        "cep": "20930-360",
        "tipo_logradouro": "Rua",
        "logradouro": "São Luiz Gonzaga",
        "bairro": "São Cristóvão",
        "cidade": "Rio de Janeiro"
    },
    {
        "cep": "21070-310",
        "tipo_logradouro": "Rua",
        "logradouro": "Mercúrio",
        "bairro": "Olaria",
        "cidade": "Rio de Janeiro"
    },
    {
        "cep": "21810-092",
        "tipo_logradouro": "Rua",
        "logradouro": "João Vicente",
        "bairro": "Padre Miguel",
        "cidade": "Rio de Janeiro"
    },
    {
        "cep": "20211-280",
        "tipo_logradouro": "Rua",
        "logradouro": "Haddock Lobo",
        "bairro": "Tijuca",
        "cidade": "Rio de Janeiro"
    },
    {
        "cep": "21510-510",
        "tipo_logradouro": "Estrada",
        "logradouro": "do Portela",
        "bairro": "Madureira",
        "cidade": "Rio de Janeiro"
    },
    {
        "cep": "21330-600",
        "tipo_logradouro": "Rua",
        "logradouro": "Borja Reis",
        "bairro": "Cascadura",
        "cidade": "Rio de Janeiro"
    },
    {
        "cep": "21615-000",
        "tipo_logradouro": "Rua",
        "logradouro": "Carabuçu",
        "bairro": "Anchieta",
        "cidade": "Rio de Janeiro"
    },
    {
        "cep": "21710-255",
        "tipo_logradouro": "Rua",
        "logradouro": "Manuel Vitorino",
        "bairro": "Realengo",
        "cidade": "Rio de Janeiro"
    },
    {
        "cep": "20250-110",
        "tipo_logradouro": "Rua",
        "logradouro": "Riachuelo",
        "bairro": "Centro",
        "cidade": "Rio de Janeiro"
    },
    {
        "cep": "20241-040",
        "tipo_logradouro": "Rua",
        "logradouro": "Do Matoso",
        "bairro": "Tijuca",
        "cidade": "Rio de Janeiro"
    },
    {
        "cep": "20521-350",
        "tipo_logradouro": "Rua",
        "logradouro": "Conde de Bonfim",
        "bairro": "Tijuca",
        "cidade": "Rio de Janeiro"
    },
    {
        "cep": "22640-102",
        "tipo_logradouro": "Avenida",
        "logradouro": "Prefeito Dulcídio Cardoso",
        "bairro": "Barra da Tijuca",
        "cidade": "Rio de Janeiro"
    },
    {
        "cep": "22793-087",
        "tipo_logradouro": "Rua",
        "logradouro": "Afonso Arinos",
        "bairro": "Recreio dos Bandeirantes",
        "cidade": "Rio de Janeiro"
    },
    {
        "cep": "20770-001",
        "tipo_logradouro": "Avenida",
        "logradouro": "Dom Hélder Câmara",
        "bairro": "Pilares",
        "cidade": "Rio de Janeiro"
    },
    {
        "cep": "20961-040",
        "tipo_logradouro": "Rua",
        "logradouro": "Barreiros",
        "bairro": "Manguinhos",
        "cidade": "Rio de Janeiro"
    },
    {
        "cep": "23013-460",
        "tipo_logradouro": "Estrada",
        "logradouro": "do Magarça",
        "bairro": "Guaratiba",
        "cidade": "Rio de Janeiro"
    },
    {
        "cep": "22470-180",
        "tipo_logradouro": "Rua",
        "logradouro": "Redentor",
        "bairro": "Ipanema",
        "cidade": "Rio de Janeiro"
    },
    {
        "cep": "21842-460",
        "tipo_logradouro": "Rua",
        "logradouro": "Marechal Marciano",
        "bairro": "Bangu",
        "cidade": "Rio de Janeiro"
    },
    {
        "cep": "21061-340",
        "tipo_logradouro": "Rua",
        "logradouro": "Etelvina",
        "bairro": "Bonsucesso",
        "cidade": "Rio de Janeiro"
    },
    {
        "cep": "20550-900",
        "tipo_logradouro": "Rua",
        "logradouro": "São Francisco Xavier",
        "bairro": "Maracanã",
        "cidade": "Rio de Janeiro"
    },
    {
        "cep": "21350-600",
        "tipo_logradouro": "Avenida",
        "logradouro": "Dom Hélder Câmara",
        "bairro": "Cavalcanti",
        "cidade": "Rio de Janeiro"
    },
    {
        "cep": "22630-011",
        "tipo_logradouro": "Estrada",
        "logradouro": "da Barra da Tijuca",
        "bairro": "Itanhangá",
        "cidade": "Rio de Janeiro"
    },
    {
        "cep": "23031-470",
        "tipo_logradouro": "Rua",
        "logradouro": "Maravilha",
        "bairro": "Campo Grande",
        "cidade": "Rio de Janeiro"
    },
    {
        "cep": "23045-000",
        "tipo_logradouro": "Rua",
        "logradouro": "Antônio José Bittencourt",
        "bairro": "Santíssimo",
        "cidade": "Rio de Janeiro"
    },
    {
        "cep": "20750-022",
        "tipo_logradouro": "Rua",
        "logradouro": "Dias da Cruz",
        "bairro": "Méier",
        "cidade": "Rio de Janeiro"
    },
    {
        "cep": "21920-000",
        "tipo_logradouro": "Rua",
        "logradouro": "Paranapuã",
        "bairro": "Freguesia (Ilha)",
        "cidade": "Rio de Janeiro"
    },
    {
        "cep": "22231-030",
        "tipo_logradouro": "Rua",
        "logradouro": "do Catete",
        "bairro": "Catete",
        "cidade": "Rio de Janeiro"
    },
    {
        "cep": "22461-160",
        "tipo_logradouro": "Rua",
        "logradouro": "Fonte da Saudade",
        "bairro": "Lagoa",
        "cidade": "Rio de Janeiro"
    },
    {
        "cep": "20715-100",
        "tipo_logradouro": "Rua",
        "logradouro": "Pedro de Carvalho",
        "bairro": "Engenho Novo",
        "cidade": "Rio de Janeiro"
    },
    {
        "cep": "21210-340",
        "tipo_logradouro": "Rua",
        "logradouro": "Ibiapina",
        "bairro": "Vicente de Carvalho",
        "cidade": "Rio de Janeiro"
    },
    {
        "cep": "21350-020",
        "tipo_logradouro": "Rua",
        "logradouro": "Brás de Pina",
        "bairro": "Cavalcanti",
        "cidade": "Rio de Janeiro"
    },
    {
        "cep": "21380-220",
        "tipo_logradouro": "Rua",
        "logradouro": "Sargento Edgar Laurindo de Araújo",
        "bairro": "Piedade",
        "cidade": "Rio de Janeiro"
    },
    {
        "cep": "21645-100",
        "tipo_logradouro": "Rua",
        "logradouro": "Pitangui",
        "bairro": "Anchieta",
        "cidade": "Rio de Janeiro"
    },
    {
        "cep": "21941-455",
        "tipo_logradouro": "Rua",
        "logradouro": "do Monjolo",
        "bairro": "Jardim Guanabara",
        "cidade": "Rio de Janeiro"
    },
    {
        "cep": "22775-017",
        "tipo_logradouro": "Rua",
        "logradouro": "Rui Barbosa",
        "bairro": "Barra da Tijuca",
        "cidade": "Rio de Janeiro"
    },
    {
        "cep": "21012-460",
        "tipo_logradouro": "Avenida",
        "logradouro": "Brasil",
        "bairro": "Ramos",
        "cidade": "Rio de Janeiro"
    },
    {
        "cep": "21850-610",
        "tipo_logradouro": "Estrada",
        "logradouro": "do Engenho",
        "bairro": "Bangu",
        "cidade": "Rio de Janeiro"
    },
    {
        "cep": "20221-110",
        "tipo_logradouro": "Rua",
        "logradouro": "Benedito Hipólito",
        "bairro": "Centro",
        "cidade": "Rio de Janeiro"
    },
    {
        "cep": "20910-150",
        "tipo_logradouro": "Rua",
        "logradouro": "São Januário",
        "bairro": "São Cristóvão",
        "cidade": "Rio de Janeiro"
    },
    {
        "cep": "22211-110",
        "tipo_logradouro": "Rua",
        "logradouro": "da Glória",
        "bairro": "Glória",
        "cidade": "Rio de Janeiro"
    },
    {
        "cep": "24030-210",
        "tipo_logradouro": "Rua",
        "logradouro": "Visconde de Itaboraí",
        "bairro": "Centro",
        "cidade": "Niterói"
    },
    {
        "cep": "24020-091",
        "tipo_logradouro": "Avenida",
        "logradouro": "Ernani do Amaral Peixoto",
        "bairro": "Centro",
        "cidade": "Niterói"
    },
    {
        "cep": "24230-200",
        "tipo_logradouro": "Rua",
        "logradouro": "Presidente Backer",
        "bairro": "Icaraí",
        "cidade": "Niterói"
    },
    {
        "cep": "24358-090",
        "tipo_logradouro": "Rua",
        "logradouro": "Almirante Ary Rongel",
        "bairro": "Piratininga",
        "cidade": "Niterói"
    },
    {
        "cep": "24210-240",
        "tipo_logradouro": "Rua",
        "logradouro": "Ator Paulo Gustavo",
        "bairro": "Icaraí",
        "cidade": "Niterói"
    },
    {
        "cep": "24342-050",
        "tipo_logradouro": "Rua",
        "logradouro": "Arlete de Souza",
        "bairro": "Itaipu",
        "cidade": "Niterói"
    },
    {
        "cep": "24120-170",
        "tipo_logradouro": "Rua",
        "logradouro": "Santa Rosa",
        "bairro": "Santa Rosa",
        "cidade": "Niterói"
    },
    {
        "cep": "24344-010",
        "tipo_logradouro": "Rua",
        "logradouro": "Presidente Roosevelt",
        "bairro": "Maravista",
        "cidade": "Niterói"
    },
    {
        "cep": "24140-170",
        "tipo_logradouro": "Rua",
        "logradouro": "Noronha Torrezão",
        "bairro": "Santa Rosa",
        "cidade": "Niterói"
    },
    {
        "cep": "24020-470",
        "tipo_logradouro": "Rua",
        "logradouro": "Conde de Itaboraí",
        "bairro": "Centro",
        "cidade": "Niterói"
    },
    {
        "cep": "24230-200",
        "tipo_logradouro": "Rua",
        "logradouro": "Moreira César",
        "bairro": "Icaraí",
        "cidade": "Niterói"
    },
    {
        "cep": "24220-171",
        "tipo_logradouro": "Avenida",
        "logradouro": "Roberto Silveira",
        "bairro": "Icaraí",
        "cidade": "Niterói"
    },
    {
        "cep": "24310-360",
        "tipo_logradouro": "Estrada",
        "logradouro": "Francisco da Cruz Nunes",
        "bairro": "Pendotiba",
        "cidade": "Niterói"
    },
    {
        "cep": "24315-360",
        "tipo_logradouro": "Rua",
        "logradouro": "São Sebastião",
        "bairro": "Maria Paula",
        "cidade": "Niterói"
    },
    {
        "cep": "24240-100",
        "tipo_logradouro": "Rua",
        "logradouro": "Paulo César",
        "bairro": "Icaraí",
        "cidade": "Niterói"
    },
    {
        "cep": "24110-370",
        "tipo_logradouro": "Rua",
        "logradouro": "Dr. Paulo César",
        "bairro": "Fonseca",
        "cidade": "Niterói"
    },
    {
        "cep": "24350-020",
        "tipo_logradouro": "Rua",
        "logradouro": "Almirante Tamandaré",
        "bairro": "Camboinhas",
        "cidade": "Niterói"
    },
    {
        "cep": "24020-470",
        "tipo_logradouro": "Rua",
        "logradouro": "São João",
        "bairro": "Centro",
        "cidade": "Niterói"
    },
    {
        "cep": "24230-200",
        "tipo_logradouro": "Rua",
        "logradouro": "Coronel Moreira César",
        "bairro": "Icaraí",
        "cidade": "Niterói"
    },
    {
        "cep": "24342-060",
        "tipo_logradouro": "Rua",
        "logradouro": "Peixoto de Carvalho",
        "bairro": "Itaipu",
        "cidade": "Niterói"
    },
    {
        "cep": "24030-091",
        "tipo_logradouro": "Rua",
        "logradouro": "Dr. Celestino",
        "bairro": "Centro",
        "cidade": "Niterói"
    },
    {
        "cep": "24320-060",
        "tipo_logradouro": "Rua",
        "logradouro": "Presidente João Goulart",
        "bairro": "São Francisco",
        "cidade": "Niterói"
    },
    {
        "cep": "24020-130",
        "tipo_logradouro": "Rua",
        "logradouro": "Coronel Gomes Machado",
        "bairro": "Centro",
        "cidade": "Niterói"
    },
    {
        "cep": "24320-160",
        "tipo_logradouro": "Rua",
        "logradouro": "Alexandre Moura",
        "bairro": "São Francisco",
        "cidade": "Niterói"
    },
    {
        "cep": "24310-380",
        "tipo_logradouro": "Rua",
        "logradouro": "Doutor Carlos Costa",
        "bairro": "Piratininga",
        "cidade": "Niterói"
    },
    {
        "cep": "24344-010",
        "tipo_logradouro": "Rua",
        "logradouro": "Jandira Pereira",
        "bairro": "Maravista",
        "cidade": "Niterói"
    },
    {
        "cep": "24220-161",
        "tipo_logradouro": "Avenida",
        "logradouro": "Quintino Bocaiúva",
        "bairro": "São Francisco",
        "cidade": "Niterói"
    },
    {
        "cep": "24230-090",
        "tipo_logradouro": "Rua",
        "logradouro": "Otávio Carneiro",
        "bairro": "Icaraí",
        "cidade": "Niterói"
    },
    {
        "cep": "24120-180",
        "tipo_logradouro": "Rua",
        "logradouro": "Santa Rosa",
        "bairro": "Santa Rosa",
        "cidade": "Niterói"
    },
    {
        "cep": "24358-020",
        "tipo_logradouro": "Rua",
        "logradouro": "Domingo Sávio",
        "bairro": "Piratininga",
        "cidade": "Niterói"
    },
    {
        "cep": "24340-100",
        "tipo_logradouro": "Rua",
        "logradouro": "Noronha Torrezão",
        "bairro": "Santa Rosa",
        "cidade": "Niterói"
    },
    {
        "cep": "24344-030",
        "tipo_logradouro": "Rua",
        "logradouro": "Alberto de Campos",
        "bairro": "Maravista",
        "cidade": "Niterói"
    },
    {
        "cep": "24435-310",
        "tipo_logradouro": "Rua",
        "logradouro": "Dr. Feliciano Sodré",
        "bairro": "Centro",
        "cidade": "São Gonçalo"
    },
    {
        "cep": "24422-190",
        "tipo_logradouro": "Avenida",
        "logradouro": "Presidente Kennedy",
        "bairro": "Mutuá",
        "cidade": "São Gonçalo"
    },
    {
        "cep": "24710-450",
        "tipo_logradouro": "Rua",
        "logradouro": "Lúcio Tomé Feteira",
        "bairro": "Neves",
        "cidade": "São Gonçalo"
    },
    {
        "cep": "24722-380",
        "tipo_logradouro": "Rua",
        "logradouro": "Manoel João Gonçalves",
        "bairro": "Tribobó",
        "cidade": "São Gonçalo"
    },
    {
        "cep": "24465-230",
        "tipo_logradouro": "Rua",
        "logradouro": "João de Araújo",
        "bairro": "Alcântara",
        "cidade": "São Gonçalo"
    },
    {
        "cep": "24470-010",
        "tipo_logradouro": "Avenida",
        "logradouro": "Maricá",
        "bairro": "Colubandê",
        "cidade": "São Gonçalo"
    },
    {
        "cep": "24738-490",
        "tipo_logradouro": "Rua",
        "logradouro": "Francisco Rabelo Leite",
        "bairro": "Jardim Catarina",
        "cidade": "São Gonçalo"
    },
    {
        "cep": "24445-060",
        "tipo_logradouro": "Rua",
        "logradouro": "João Damasceno",
        "bairro": "Zé Garoto",
        "cidade": "São Gonçalo"
    },
    {
        "cep": "24440-550",
        "tipo_logradouro": "Rua",
        "logradouro": "Carlos Gianelli",
        "bairro": "Zé Garoto",
        "cidade": "São Gonçalo"
    },
    {
        "cep": "24716-270",
        "tipo_logradouro": "Rua",
        "logradouro": "Antônio Lisboa",
        "bairro": "Porto Velho",
        "cidade": "São Gonçalo"
    },
    {
        "cep": "24727-090",
        "tipo_logradouro": "Rua",
        "logradouro": "Manoel Duarte",
        "bairro": "Maria Paula",
        "cidade": "São Gonçalo"
    },
    {
        "cep": "24431-080",
        "tipo_logradouro": "Rua",
        "logradouro": "Silvio Romero",
        "bairro": "Nova Cidade",
        "cidade": "São Gonçalo"
    },
    {
        "cep": "24421-340",
        "tipo_logradouro": "Rua",
        "logradouro": "Joaquim Lavoura",
        "bairro": "Mutondo",
        "cidade": "São Gonçalo"
    },
    {
        "cep": "24422-270",
        "tipo_logradouro": "Rua",
        "logradouro": "José Augusto Pereira",
        "bairro": "Mutuá",
        "cidade": "São Gonçalo"
    },
    {
        "cep": "24710-340",
        "tipo_logradouro": "Avenida",
        "logradouro": "Paiva",
        "bairro": "Neves",
        "cidade": "São Gonçalo"
    },
    {
        "cep": "24465-540",
        "tipo_logradouro": "Rua",
        "logradouro": "Almeida Barreto",
        "bairro": "Mutuapira",
        "cidade": "São Gonçalo"
    },
    {
        "cep": "24430-040",
        "tipo_logradouro": "Rua",
        "logradouro": "Ana Neri",
        "bairro": "Paraíso",
        "cidade": "São Gonçalo"
    },
    {
        "cep": "24722-150",
        "tipo_logradouro": "Rua",
        "logradouro": "Luís Carlos Prestes",
        "bairro": "Tribobó",
        "cidade": "São Gonçalo"
    },
    {
        "cep": "24435-270",
        "tipo_logradouro": "Rua",
        "logradouro": "Francisco Portela",
        "bairro": "Centro",
        "cidade": "São Gonçalo"
    },
    {
        "cep": "24473-410",
        "tipo_logradouro": "Rua",
        "logradouro": "José Marcelino",
        "bairro": "Boaçu",
        "cidade": "São Gonçalo"
    },
    {
        "cep": "24445-500",
        "tipo_logradouro": "Rua",
        "logradouro": "São João Batista",
        "bairro": "Zé Garoto",
        "cidade": "São Gonçalo"
    },
    {
        "cep": "24716-430",
        "tipo_logradouro": "Rua",
        "logradouro": "Sargento Manoel",
        "bairro": "Porto Novo",
        "cidade": "São Gonçalo"
    },
    {
        "cep": "24435-210",
        "tipo_logradouro": "Rua",
        "logradouro": "Otávio Corrêa",
        "bairro": "Centro",
        "cidade": "São Gonçalo"
    },
    {
        "cep": "24430-240",
        "tipo_logradouro": "Rua",
        "logradouro": "Padre Afonso",
        "bairro": "Portão do Rosa",
        "cidade": "São Gonçalo"
    },
    {
        "cep": "24710-480",
        "tipo_logradouro": "Rua",
        "logradouro": "Maria Lima",
        "bairro": "Porto Velho",
        "cidade": "São Gonçalo"
    },
    {
        "cep": "24410-290",
        "tipo_logradouro": "Rua",
        "logradouro": "Salvador de Sá",
        "bairro": "Centro",
        "cidade": "São Gonçalo"
    },
    {
        "cep": "24422-080",
        "tipo_logradouro": "Avenida",
        "logradouro": "Joaquim de Oliveira",
        "bairro": "Mutuá",
        "cidade": "São Gonçalo"
    },
    {
        "cep": "24716-230",
        "tipo_logradouro": "Rua",
        "logradouro": "Joaquim Figueiredo",
        "bairro": "Porto Velho",
        "cidade": "São Gonçalo"
    },
    {
        "cep": "24465-330",
        "tipo_logradouro": "Rua",
        "logradouro": "João Brasil",
        "bairro": "Alcântara",
        "cidade": "São Gonçalo"
    },
    {
        "cep": "24430-050",
        "tipo_logradouro": "Rua",
        "logradouro": "José Figueiredo",
        "bairro": "Centro",
        "cidade": "São Gonçalo"
    },
    {
        "cep": "24745-500",
        "tipo_logradouro": "Rua",
        "logradouro": "Estrada Velha de Maricá",
        "bairro": "Santa Isabel",
        "cidade": "São Gonçalo"
    },
    {
        "cep": "27110-020",
        "tipo_logradouro": "Rua",
        "logradouro": "Dr. Mesquita",
        "bairro": "Centro",
        "cidade": "Barra do Piraí"
    },
    {
        "cep": "27135-150",
        "tipo_logradouro": "Avenida",
        "logradouro": "Paulo de Frontin",
        "bairro": "Química",
        "cidade": "Barra do Piraí"
    },
    {
        "cep": "27110-040",
        "tipo_logradouro": "Rua",
        "logradouro": "Moreira dos Santos",
        "bairro": "Centro",
        "cidade": "Barra do Piraí"
    },
    {
        "cep": "27120-360",
        "tipo_logradouro": "Rua",
        "logradouro": "Governador Portela",
        "bairro": "Vila Helena",
        "cidade": "Barra do Piraí"
    },
    {
        "cep": "27130-130",
        "tipo_logradouro": "Travessa",
        "logradouro": "Geraldo de Paula",
        "bairro": "Areia Branca",
        "cidade": "Barra do Piraí"
    },
    {
        "cep": "27140-240",
        "tipo_logradouro": "Rua",
        "logradouro": "Doutor Adalberto",
        "bairro": "Muqueca",
        "cidade": "Barra do Piraí"
    },
    {
        "cep": "27120-190",
        "tipo_logradouro": "Rua",
        "logradouro": "Joaquim Soares",
        "bairro": "Vila Suíça",
        "cidade": "Barra do Piraí"
    },
    {
        "cep": "27150-310",
        "tipo_logradouro": "Avenida",
        "logradouro": "Cristóvão Colombo",
        "bairro": "São João",
        "cidade": "Barra do Piraí"
    },
    {
        "cep": "27115-050",
        "tipo_logradouro": "Rua",
        "logradouro": "Antônio Moura",
        "bairro": "Belvedere",
        "cidade": "Barra do Piraí"
    },
    {
        "cep": "27120-100",
        "tipo_logradouro": "Rua",
        "logradouro": "Almirante Tamandaré",
        "bairro": "Morro do Gama",
        "cidade": "Barra do Piraí"
    },
    {
        "cep": "27130-230",
        "tipo_logradouro": "Rua",
        "logradouro": "José Mendes",
        "bairro": "Areia Branca",
        "cidade": "Barra do Piraí"
    },
    {
        "cep": "27145-160",
        "tipo_logradouro": "Rua",
        "logradouro": "Mário Lobo",
        "bairro": "Morro Grande",
        "cidade": "Barra do Piraí"
    },
    {
        "cep": "27120-480",
        "tipo_logradouro": "Travessa",
        "logradouro": "Francisco de Assis",
        "bairro": "Vila Helena",
        "cidade": "Barra do Piraí"
    },
    {
        "cep": "27135-190",
        "tipo_logradouro": "Rua",
        "logradouro": "Fagundes Varela",
        "bairro": "Química",
        "cidade": "Barra do Piraí"
    },
    {
        "cep": "27140-070",
        "tipo_logradouro": "Avenida",
        "logradouro": "João Batista",
        "bairro": "Muqueca",
        "cidade": "Barra do Piraí"
    },
    {
        "cep": "27110-380",
        "tipo_logradouro": "Rua",
        "logradouro": "Oswaldo Cruz",
        "bairro": "Centro",
        "cidade": "Barra do Piraí"
    },
    {
        "cep": "27115-060",
        "tipo_logradouro": "Rua",
        "logradouro": "Evaristo da Veiga",
        "bairro": "Belvedere",
        "cidade": "Barra do Piraí"
    },
    {
        "cep": "27150-080",
        "tipo_logradouro": "Rua",
        "logradouro": "João Pessoa",
        "bairro": "São João",
        "cidade": "Barra do Piraí"
    },
    {
        "cep": "27110-090",
        "tipo_logradouro": "Travessa",
        "logradouro": "Barão de Mauá",
        "bairro": "Centro",
        "cidade": "Barra do Piraí"
    },
    {
        "cep": "27140-320",
        "tipo_logradouro": "Rua",
        "logradouro": "Carlos Chagas",
        "bairro": "Muqueca",
        "cidade": "Barra do Piraí"
    },
    {
        "cep": "27135-240",
        "tipo_logradouro": "Avenida",
        "logradouro": "Presidente Vargas",
        "bairro": "Química",
        "cidade": "Barra do Piraí"
    },
    {
        "cep": "27120-300",
        "tipo_logradouro": "Rua",
        "logradouro": "Manoel Moreira",
        "bairro": "Vila Helena",
        "cidade": "Barra do Piraí"
    },
    {
        "cep": "27145-210",
        "tipo_logradouro": "Rua",
        "logradouro": "Santos Dumont",
        "bairro": "Morro Grande",
        "cidade": "Barra do Piraí"
    },
    {
        "cep": "27130-140",
        "tipo_logradouro": "Rua",
        "logradouro": "Barão do Rio Branco",
        "bairro": "Areia Branca",
        "cidade": "Barra do Piraí"
    },
    {
        "cep": "27140-400",
        "tipo_logradouro": "Travessa",
        "logradouro": "Monte Castelo",
        "bairro": "Muqueca",
        "cidade": "Barra do Piraí"
    },
    {
        "cep": "27135-350",
        "tipo_logradouro": "Rua",
        "logradouro": "Bernardo Guimarães",
        "bairro": "Química",
        "cidade": "Barra do Piraí"
    },
    {
        "cep": "27110-320",
        "tipo_logradouro": "Rua",
        "logradouro": "Pedro II",
        "bairro": "Centro",
        "cidade": "Barra do Piraí"
    },
    {
        "cep": "27115-390",
        "tipo_logradouro": "Avenida",
        "logradouro": "Antônio Carlos",
        "bairro": "Belvedere",
        "cidade": "Barra do Piraí"
    },
    {
        "cep": "27140-230",
        "tipo_logradouro": "Rua",
        "logradouro": "Joaquim Figueiredo",
        "bairro": "Muqueca",
        "cidade": "Barra do Piraí"
    },
    {
        "cep": "27110-210",
        "tipo_logradouro": "Travessa",
        "logradouro": "Augusto de Lima",
        "bairro": "Centro",
        "cidade": "Barra do Piraí"
    },
    {
        "cep": "27120-090",
        "tipo_logradouro": "Rua",
        "logradouro": "Tiradentes",
        "bairro": "Vila Suíça",
        "cidade": "Barra do Piraí"
    }
];

if (enderecos.length > 0) {
    const enderecoAleatorio = enderecos[Math.floor(Math.random() * enderecos.length)];
    
    pm.environment.set("cep", enderecoAleatorio.cep);
    pm.environment.set("tipo_logradouro", enderecoAleatorio.tipo_logradouro);
    pm.environment.set("logradouro", enderecoAleatorio.logradouro);
    pm.environment.set("bairro", enderecoAleatorio.bairro);
    pm.environment.set("cidade", enderecoAleatorio.cidade);
} else {
    console.error("O array de endereços está vazio!");
}