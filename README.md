# SGCPRO - Sistema de Gerenciamento de Circuitos

## Documentação e Instalação
- [Documentação React](https://react.dev/learn/creating-a-react-app)
- [Documentação Vite](https://vite.dev/guide/)
- [Documentação CodeIgniter](https://codeigniter.com/user_guide/installation/index.html)
- [Instalação Docker Compose](https://docs.docker.com/compose/install/)
- [Guias Docker](https://docs.docker.com/guides/)
- [Manual PHP](https://www.php.net/manual/pt_BR/index.php)
- [Documentação Laragon](https://laragon.org/docs/)
- [Tutorial JavaScript - W3Schools](https://www.w3schools.com/js/default.asp)
- [Bootstrap](https://getbootstrap.com/docs/5.3/getting-started/introduction/)

## Tecnologias Utilizadas
- Docker-compose.yml
- Dockerfile (src)
- Dockerfile (MySQL)
- PHP 8.2 (extensão calendar)
- Codeigniter 4.6
- React 18
- Bootstrap 5.0.3

## Dependências Frontend
```
frontend@0.0.0
├── @eslint/js@9.21.0
├── @types/react-dom@19.0.4
├── @types/react@19.0.10
├── @vitejs/plugin-react@4.3.4
├── eslint-plugin-react-hooks@5.1.0
├── eslint-plugin-react-refresh@0.4.19
├── eslint-plugin-react@7.37.4
├── eslint@9.21.0
├── globals@15.15.0
├── react-dom@19.0.0
├── react@19.0.0
└── vite@6.2.0
```

## Instalação

### Nova Instalação
1. Copiar script: `doc\comando_estrutura_v5.txt`
2. Abrir o terminal do PowerShell
3. Colar o script copiado (doc\comando_estrutura_v4.txt)
4. Caso o script não rode automaticamente, pressionar [ENTER]
5. Caso o script pergunte:
   ```
   Need to install the following packages:
     create-vite@6.3.1
   Ok to proceed? (y) y
   ```
   Confirme com "y"

### Estrutura do Projeto (Nova Instalação)
```
http://127.0.0.1:59000/src/public/observer.php
│
└── script\
    └── react_modelo_v1\
        └── frontend\
            ├── node_modules\
            ├── public\
            │   └── vite.svg
            ├── src\
            │   ├── assets\
            │   │   ├── images\
            │   │   └── react.svg
            │   ├── components\
            │   │   ├── Button\
            │   │   │   ├── index.jsx
            │   │   │   └── styles.css
            │   │   ├── Footer\
            │   │   │   ├── index.jsx
            │   │   │   └── styles.css
            │   │   └── Header\
            │   │       ├── index.jsx
            │   │       └── styles.css
            │   ├── contexts\
            │   │   ├── AuthContext.js
            │   │   └── ThemeContext.js
            │   ├── hooks\
            │   │   ├── useApi.js
            │   │   └── useAuth.js
            │   ├── middlewares\
            │   │   ├── authMiddleware.js
            │   │   ├── errorHandlerMiddleware.js
            │   │   └── loggingMiddleware.js
            │   ├── models\
            │   ├── pages\
            │   │   ├── About\
            │   │   │   ├── index.jsx
            │   │   │   └── styles.css
            │   │   └── Home\
            │   │       ├── index.jsx
            │   │       └── styles.css
            │   ├── routes\
            │   ├── services\
            │   │   ├── api.js
            │   │   └── auth.js
            │   ├── styles\
            │   │   └── global.css
            │   ├── utils\
            │   │   └── helpers.js
            │   ├── App.css
            │   ├── App.jsx
            │   ├── index.css
            │   ├── main.jsx
            │   └── routes.jsx
            ├── .gitignore
            ├── README.md
            ├── eslint.config.js
            ├── index.html
            ├── package-lock.json
            ├── package.json
            └── vite.config.js
```

## Manutenção da Instalação

### Estrutura do Projeto (Manutenção)
```
http://127.0.0.1:59000/src/public/observer.php
│
└── script\
    └── react_modelo_v1\
        └── frontend\
            ├── node_modules\
            ├── public\
            │   └── vite.svg
            ├── src\
            │   ├── assets\
            │   │   ├── images\
            │   │   │   ├── circuitosProderj.jpeg
            │   │   │   ├── circuitosProderj2.jpeg
            │   │   │   ├── govbr-logo-large.png
            │   │   │   └── logoProderj.png
            │   │   └── react.svg
            │   ├── components\
            │   │   ├── Button\
            │   │   │   ├── index.jsx
            │   │   │   └── styles.css
            │   │   ├── Footer\
            │   │   │   ├── index.jsx
            │   │   │   └── styles.css
            │   │   ├── Header\
            │   │   │   ├── index.jsx
            │   │   │   └── styles.css
            │   │   └── Nav\
            │   │       ├── index.jsx
            │   │       └── styles.css
            │   ├── contexts\
            │   │   ├── AuthContext.js
            │   │   └── ThemeContext.js
            │   ├── hooks\
            │   │   ├── useApi.js
            │   │   └── useAuth.js
            │   ├── middlewares\
            │   │   ├── authMiddleware.js
            │   │   ├── errorHandlerMiddleware.js
            │   │   └── loggingMiddleware.js
            │   ├── models\
            │   ├── pages\
            │   │   ├── AppAbout\
            │   │   │   ├── index.jsx
            │   │   │   └── styles.css
            │   │   └── AppHome\
            │   │       ├── index.jsx
            │   │       └── styles.css
            │   ├── routes\
            │   │   └── index.jsx
            │   ├── services\
            │   │   ├── api.js
            │   │   └── auth.js
            │   ├── styles\
            │   │   └── global.css
            │   ├── utils\
            │   │   └── helpers.js
            │   ├── App.css
            │   ├── App.jsx
            │   ├── AppBackmain.jsx
            │   ├── BackpApp.css
            │   ├── BackpApp.jsx
            │   ├── index.css
            │   └── main.jsx
            ├── .gitignore
            ├── README.md
            ├── eslint.config.js
            ├── index.html
            ├── package-lock.json
            ├── package.json
            └── vite.config.js
```