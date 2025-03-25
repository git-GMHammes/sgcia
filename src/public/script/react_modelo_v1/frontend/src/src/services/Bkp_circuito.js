// C:\laragon\www\sgcpro\src\public\script\react_modelo_v1\frontend\src\services\circuito.js
import axios from 'axios';
import { getBaseUrl } from '../config/env';

// Obter a URL base do ambiente atual
const baseUrl = getBaseUrl();

// Configuração base do axios
const api = axios.create({
  baseURL: `${baseUrl}sgcpro`,
  headers: {
    'Content-Type': 'application/json'
  },
  timeout: 30000 // 30 segundos
});

console.log('API:', `${baseUrl}sgcpro`);
console.log('URL base:', baseUrl);

// Interceptador para adicionar token CSRF em todas as requisições
api.interceptors.request.use(config => {
  const token = document.querySelector('meta[name="csrf-token"]')?.getAttribute('content');
  if (token) {
    config.headers['X-CSRF-TOKEN'] = token;
  }
  return config;
});

// [GET] getEndpoint => const url_endpoint = '/circuito/endpoint/react';
// [GET] getAll => const url_api = `/circuito/api/listar?page=${page}&limit=${limit}`;
// [GET] getPagination => const url_api = `/circuito/api/listar?page=${page}&limit=${limit}`;
// [GET] getById => const url_api = `/circuito/api/listar/${id}`;
// [POST] postFilter => const url_api = `/circuito/api/filtrar?page=${page}&limit=${limit}`;
// [POST] postCreate => const url_api = '/circuito/api/salvar';
// [POST] postUpdate => const url_api = '/circuito/api/salvar';
// [GET] getDelete => const url_api = `/api/deletar/${id}`;
// [GET] getRestore => const url_api = `/api/deletar/${id}/restaurar`;

// Serviço para gerenciar circuitos
const ERRO_CircuitoService = {

  // Método específico para buscar uma página
  getPage: async (page = 1, limit = 10) => {
    console.log(`getPage chamado com page=${page}, limit=${limit}`);
    try {
      const url_api = `/circuito/api/listar?page=${page}&limit=${limit}`;
      console.log('URL completa:', `${baseUrl}sgcpro${url_api}`);

      const response = await api.get(url_api);
      console.log('Resposta bruta da API:', response.status);

      // Verificar se a resposta tem a estrutura básica esperada
      if (!response.data || !response.data.status) {
        console.error('Erro: Resposta da API inválida ou incompleta.');
        console.error('Estrutura da resposta recebida:', response.data);
        return []; // Retorna array vazio para compatibilidade com o componente
      }

      // Verificar e processar os circuitos
      if (response.data.result &&
        response.data.result.dbResponse &&
        Array.isArray(response.data.result.dbResponse)) {

        const circuitos = response.data.result.dbResponse;

        // Log sobre os circuitos encontrados
        if (circuitos.length > 0) {
          console.log(`Sucesso! Encontrados ${circuitos.length} circuitos na resposta.`);
          console.log('Primeiro circuito como exemplo:', circuitos[0]);

          // Preparar dados de metadados para anexar ao array
          const metadados = {
            paginacao: null,
            uri: null,
            metadata: null
          };

          // Processar dados de paginação
          if (response.data.result && response.data.result.linksArray) {
            metadados.paginacao = response.data.result.linksArray;

            // Extrair informações úteis da paginação
            const paginaAtual = metadados.paginacao.find(link => link.text.trim() === page.toString())?.href;
            const ultimaPagina = metadados.paginacao.find(link => link.text.trim().includes('Último'))?.href;

            console.log('Informações de paginação disponíveis:');
            console.log(`- Total de links: ${metadados.paginacao.length}`);
            console.log(`- Página atual: ${paginaAtual || 'Não identificada'}`);
            console.log(`- Última página: ${ultimaPagina || 'Não identificada'}`);
          } else {
            console.log('Sem informações de paginação na resposta.');
          }

          // Processar dados de URI
          if (response.data.metadata && response.data.metadata.getURI) {
            metadados.uri = response.data.metadata.getURI;
            const uriCompleta = metadados.uri.join('/');
            console.log('URI da requisição:', uriCompleta);
          } else {
            console.log('Sem informações de URI na resposta.');
          }

          // Armazenar metadados completos
          if (response.data.metadata) {
            metadados.metadata = response.data.metadata;
            console.log('Metadados disponíveis:', Object.keys(response.data.metadata).join(', '));
          }

          // Anexar metadados ao array de circuitos (de forma não enumerável)
          Object.defineProperty(circuitos, '_metadata', {
            enumerable: false, // Não aparece em iterações normais
            value: metadados
          });

          // Armazenar metadados globalmente para acesso fácil em outros componentes
          window._circuitosMetadata = metadados;

          return circuitos;
        } else {
          console.log('A resposta contém um array vazio de circuitos.');
          return []; // Array vazio quando não há circuitos
        }
      } else {
        console.error('Erro: A resposta não contém o array de circuitos esperado.');
        return []; // Array vazio quando a estrutura não é a esperada
      }
    } catch (error) {
      console.error(`Erro ao buscar página ${page}:`, error);
      return []; // Retorna array vazio em caso de erro
    }
  },

  // Método POST personalizado para endpoint react
  fetchPost: async (formData) => {
    try {
      const url_endpoint = '/circuito/endpoint/react';
      console.log('url_endpoint :: :', `${baseUrl}sgcpro${url_endpoint}`);
      const response = await api.post(url_endpoint, formData);
      console.log('Resposta da API:', response.data.result);
      if (response && response.data && response.data.success) {
        return response.data;
      }
    } catch (error) {
      console.error('Erro ao enviar dados para endpoint react:', error);
      return false;
    }
  },

  // Buscar todos os circuitos
  getAll: async (page = 1, limit = 10) => {
    try {
      const url_api = `/circuito/api/listar?page=${page}&limit=${limit}`;
      console.log('url_api :: ', `${baseUrl}sgcpro${url_api}`);

      // Variável única para retorno final
      let resultado;

      const response = await api.get(url_api);

      // Verificar se a resposta tem a estrutura básica esperada
      if (!response.data || !response.data.status) {
        console.error('Erro: Resposta da API inválida ou incompleta.');
        console.error('Estrutura da resposta recebida:', response.data);
        return []; // Retorna array vazio para compatibilidade com o componente
      }

      // Verificar e processar os circuitos
      if (response.data.result &&
        response.data.result.dbResponse &&
        Array.isArray(response.data.result.dbResponse)) {

        const circuitos = response.data.result.dbResponse;

        // Log sobre os circuitos encontrados
        if (circuitos.length > 0) {
          console.log(`Sucesso! Encontrados ${circuitos.length} circuitos na resposta.`);
          console.log('Primeiro circuito como exemplo:', circuitos[0]);

          // Preparar dados de metadados para anexar ao array
          const metadados = {
            paginacao: null,
            uri: null,
            metadata: null
          };

          // Processar dados de paginação
          if (response.data.result && response.data.result.linksArray) {
            metadados.paginacao = response.data.result.linksArray;

            // Extrair informações úteis da paginação
            const paginaAtual = metadados.paginacao.find(link => link.text.trim() === '1')?.href;
            const ultimaPagina = metadados.paginacao.find(link => link.text.trim().includes('Último'))?.href;

            console.log('Informações de paginação disponíveis:');
            console.log(`- Total de links: ${metadados.paginacao.length}`);
            console.log(`- Página atual: ${paginaAtual || 'Não identificada'}`);
            console.log(`- Última página: ${ultimaPagina || 'Não identificada'}`);
          } else {
            console.log('Sem informações de paginação na resposta.');
          }

          // Processar dados de URI
          if (response.data.metadata && response.data.metadata.getURI) {
            metadados.uri = response.data.metadata.getURI;
            const uriCompleta = metadados.uri.join('/');
            console.log('URI da requisição:', uriCompleta);
          } else {
            console.log('Sem informações de URI na resposta.');
          }

          // Armazenar metadados completos
          if (response.data.metadata) {
            metadados.metadata = response.data.metadata;
            console.log('Metadados disponíveis:', Object.keys(response.data.metadata).join(', '));
          }

          // Anexar metadados ao array de circuitos (de forma não enumerável)
          Object.defineProperty(circuitos, '_metadata', {
            enumerable: false, // Não aparece em iterações normais
            value: metadados
          });

          // Armazenar metadados globalmente para acesso fácil em outros componentes
          window._circuitosMetadata = metadados;

          // Definir resultado como o array de circuitos
          resultado = circuitos;
        } else {
          console.log('A resposta contém um array vazio de circuitos.');
          resultado = []; // Array vazio quando não há circuitos
        }
      } else {
        console.error('Erro: A resposta não contém o array de circuitos esperado.');
        resultado = []; // Array vazio quando a estrutura não é a esperada
      }

      // Um único ponto de retorno
      console.log('Retornando dados para o componente:', resultado);
      return resultado;
    } catch (error) {
      console.error('Erro ao buscar circuitos:', error);
      return []; // Retorna array vazio em caso de erro, em vez de lançar exceção
    }
  },

  // Buscar um circuito específico por ID
  getById: async (id) => {
    try {
      const url_api = `/circuito/api/listar/${id}`;
      console.log('url_api :: :', `${baseUrl}sgcpro${url_api}`);
      const response = await api.get(url_api);
      return response.data;
    } catch (error) {
      console.error(`Erro ao buscar circuito com ID ${id}:`, error);
      throw error;
    }
  },

  // Método para filtrar com suporte a paginação
  filtrar: async (params, page = 1, limit = 10) => {
    try {
      const url_api = `/circuito/api/filtrar?page=${page}&limit=${limit}`;
      console.log('url_api :: :', `${baseUrl}sgcpro${url_api}`);
      const response = await api.post(url_api, params);

      // Processar a resposta de maneira similar ao getAll para manter consistência
      // Poderia extrair essa lógica para uma função auxiliar
      if (response.data &&
        response.data.result &&
        response.data.result.dbResponse &&
        Array.isArray(response.data.result.dbResponse)) {

        const circuitos = response.data.result.dbResponse;

        // Anexar metadados como no método getAll
        if (circuitos.length > 0) {
          const metadados = {
            paginacao: response.data.result.linksArray || null,
            uri: response.data.metadata?.getURI || null,
            metadata: response.data.metadata || null
          };
          Object.defineProperty(circuitos, '_metadata', {
            enumerable: false,
            value: metadados
          });

          window._circuitosMetadata = metadados;
          return circuitos;
        }
      }

      return [];
    } catch (error) {
      console.error('Erro ao filtrar circuitos:', error);
      return [];
    }
  },

  // Criar um novo circuito
  create: async (circuitoData) => {
    try {
      const url_api = '/circuito/api/salvar';
      console.log('url_api :: :', `${baseUrl}sgcpro${url_api}`);
      const response = await api.post(url_api, circuitoData);
      return response.data;
    } catch (error) {
      console.error('Erro ao criar circuito:', error);
      throw error;
    }
  },

  // Atualizar um circuito existente
  update: async (id, circuitoData) => {
    try {
      // Adicionando ID aos dados para identificar a atualização no backend
      const dataWithId = { ...circuitoData, id };
      const url_api = '/circuito/api/salvar';
      console.log('url_api :: :', `${baseUrl}sgcpro${url_api}`);
      const response = await api.post(url_api, dataWithId);
      return response.data;
    } catch (error) {
      console.error(`Erro ao atualizar circuito com ID ${id}:`, error);
      throw error;
    }
  },

  // Excluir um circuito
  delete: async (id) => {
    try {
      const url_api = `/api/deletar/${id}`;
      console.log('url_api :: :', `${baseUrl}sgcpro${url_api}`);
      const response = await api.get(url_api);
      return response.data;
    } catch (error) {
      console.error(`Erro ao excluir circuito com ID ${id}:`, error);
      throw error;
    }
  },

  // Restaurar um circuito excluído
  restore: async (id) => {
    try {
      const url_api = `/api/deletar/${id}/restaurar`;
      console.log('url_api :: :', `${baseUrl}sgcpro${url_api}`);
      const response = await api.get(url_api);
      return response.data;
    } catch (error) {
      console.error(`Erro ao restaurar circuito com ID ${id}:`, error);
      throw error;
    }
  },

  // Buscar secretarias para o select
  getSecretarias: async () => {
    try {
      // Criando uma nova instância axios para secretarias
      const secretariaApi = axios.create({
        baseURL: `${baseUrl}sgcpro`,
        headers: {
          'Content-Type': 'application/json'
        }
      });
      const url_api = '/secretaria/api/listar';
      console.log('url_api :: :', `${baseUrl}sgcpro${url_api}`);
      const response = await secretariaApi.get(url_api);
      return response.data;
    } catch (error) {
      console.error('Erro ao buscar secretarias:', error);
      throw error;
    }
  },

  // Buscar endereços para o select
  getEnderecos: async () => {
    try {
      // Criando uma nova instância axios para endereços
      const enderecoApi = axios.create({
        baseURL: `${baseUrl}sgcpro`,
        headers: {
          'Content-Type': 'application/json'
        }
      });
      const url_api = '/endereco/api/listar';
      console.log('url_api :: :', `${baseUrl}sgcpro${url_api}`);
      const response = await enderecoApi.get(url_api);
      return response.data;
    } catch (error) {
      console.error('Erro ao buscar endereços:', error);
      throw error;
    }
  }
};

export default CircuitoService_ERRO;