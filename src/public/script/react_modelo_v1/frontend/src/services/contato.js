// ServicesContato.js
import axios from 'axios';
import { getBaseApi } from '../config/env';

const baseUrl = getBaseApi();
console.log('baseUrl (C:/laragon/www/sgcpro/src/public/script/react_modelo_v1/frontend/src/services/contato.js):', baseUrl);
// Configuração base do axios

// Configuração base do axios
const api = axios.create({
  baseURL: `${baseUrl}sgcpro`,
  headers: {
    'Content-Type': 'application/json',
  },
  timeout: 30000,
});

// Serviço para gerenciar cobranças
const ContatoService = {
  // Método getAll com tratamento de erro completo
  getAll: async (page = 1, limit = 10) => {

    const url = `/contato/api/listar?page=${page}&limit=${limit}`;

    try {
      const response = await api.get(url);
      if (response.data.result.dbResponse !== undefined) {
        return response.data.result.dbResponse;
      } else {
        return [];
      }
    } catch (error) {
      // Tratamento específico para erro 404
      if (error.status && error.status === 404) {
        // console.error('Erro 404: Endereço não encontrado');
        return { error: 'Endereço [getAll] => ${url}' + url + ' não encontrado', status: 404 };
      }

      console.error('Erro em getAll:', error);
      throw error;
    }
  },

  // Método getPagination com tratamento de erro completo
  getPagination: async (page = 1, limit = 10) => {

    const url = `/contato/api/listar?page=${page}&limit=${limit}`;

    try {
      const response = await api.get(url);
      if (response.data.result.linksArray !== undefined) {
        return response.data.result.linksArray;
      } else {
        return [];
      }
    } catch (error) {
      // Tratamento específico para erro 404
      if (error.response && error.response.status === 404) {
        // console.error('Erro 404: Endereço não encontrado');
        return { error: 'Endereço [getPagination] => ${url}' + url + ' não encontrado', status: 404 };
      }

      console.error('Erro em getPagination:', error);
      throw error;
    }
  }
};

export default ContatoService;