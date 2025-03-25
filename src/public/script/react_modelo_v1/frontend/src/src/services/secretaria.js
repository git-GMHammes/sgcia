import axios from 'axios';
import { getBaseUrl } from '../config/env';

const baseUrl = getBaseUrl();

const api = axios.create({
  baseURL: `${baseUrl}sgcpro`,
  headers: { 'Content-Type': 'application/json' },
  timeout: 30000,
});

const SecretariaService = {
  getAll: async () => {
    try {
      const response = await api.get('/secretaria/api/listar');
      return response.data.result.dbResponse || [];
    } catch (error) {
      console.error('Erro ao buscar secretarias:', error);
      return [];
    }
  },
};

export default SecretariaService;