// ServicesContato.js
import axios from 'axios';
import { getBaseUrl } from '../config/env';

const baseUrl = getBaseUrl();
const api = axios.create({
  baseURL: `${baseUrl}sgcpro`,
  headers: {
    'Content-Type': 'application/json',
  },
  timeout: 30000,
});

const ContatoService = {
  getAll: async () => {
    try {
      const response = await api.get('/contato/api/listar');
      return response.data.result.dbResponse || [];
    } catch (error) {
      console.error('Erro ao buscar contatos:', error);
      return [];
    }
  },
};

export default ContatoService;