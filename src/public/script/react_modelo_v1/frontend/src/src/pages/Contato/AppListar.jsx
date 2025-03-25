import React, { useState, useEffect } from 'react';
import AppListarConteudo from './AppListarConteudo';
import ContatoService from '../../services/contato';
import './styles.css';
import JSONViewer from '../../components/JSONViewer';

const AppListar = () => {
  const [loading, setLoading] = useState(true);
  const [lista, setLista] = useState([]);
  const [pagination, setPagination] = useState([]);
  const [debugMyPrint, setDebugMyPrint] = useState(false);

  const fetchContato = async (page = 1, limit = 10) => {
    try {
      setLoading(true);

      // Obter dados usando o método getAll do ContatoService
      const response = await ContatoService.getAll(page, limit);

      console.log('Resposta do getAll:', response);
      if (response.length > 0) {
        setLista(response);
      }
      setLoading(false);
    } catch (err) {
      console.error('Erro cobranças:', err);
      setLoading(false);
    }
  };

  const fetchPagination = async (page = 1, limit = 10) => {
    try {
      setLoading(true);

      // Obter dados usando o método getAll do ContatoService
      const response = await ContatoService.getPagination(page, limit);

      console.log('Resposta do getPagination:', response);
      if (response.length > 0) {
        setPagination(response);
      }
      setLoading(false);
    } catch (err) {
      console.error('Erro pagination:', err);
      setLoading(false);
    }
  };

  useEffect(() => {

    fetchContato();
    fetchPagination();
    setDebugMyPrint(true);

  }, []);

  return (
    <div>
      <h3 className="mb-0">Lista de Cobranças</h3>

      {loading && <p>Carregando dados...</p>}

      <AppListarConteudo
        lista={lista}
        pagination={pagination}
        loading={loading}
        debugMyPrint={debugMyPrint}
        fetchContato={fetchContato}
        fetchPagination={fetchPagination}
      >
      </AppListarConteudo>

      {(debugMyPrint) && (
        <div>
          <JSONViewer
            data={lista}
            title="Resposta da API Cobrança"
          />
          <JSONViewer
            data={pagination}
            title="Resposta da API Pagimnation"
          />
        </div>
      )}
    </div>
  );
};

export default AppListar;