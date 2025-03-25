import React, { useState, useEffect } from 'react';
import { useNavigate } from 'react-router-dom';
import { Plus } from 'lucide-react';
import ContatoService from '../../services/contato';
import AppListarConteudo from './AppListarConteudo';
import './styles.css';

const AppListar = () => {
  const navigate = useNavigate();
  const [contatos, setContatos] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);
  const [filtro, setFiltro] = useState('');

  useEffect(() => {
    const fetchContatos = async () => {
      setLoading(true);
      setError(null);
      try {
        const data = await ContatoService.getAll();
        setContatos(data);
      } catch (err) {
        setError('Erro ao carregar contatos.');
      } finally {
        setLoading(false);
      }
    };
    fetchContatos();
  }, []);

  const contatosFiltrados = contatos.filter(contato =>
    contato.nome.toLowerCase().includes(filtro.toLowerCase())
  );

  return (
    <div className="container mt-4">
      <div className="card">
        <div className="card-header bg-primary text-white d-flex justify-content-between align-items-center">
          <h2 className="mb-0">Lista de Contatos</h2>
          <button className="btn btn-light" onClick={() => navigate('/contato/cadastrar')}>
            <Plus size={18} className="me-1" /> Novo Contato
          </button>
        </div>
        <div className="card-body">
          {error && <div className="alert alert-danger">{error}</div>}
          {loading ? (
            <p>Carregando...</p>
          ) : (
            <AppListarConteudo contatos={contatosFiltrados} />
          )}
        </div>
      </div>
    </div>
  );
};

export default AppListar;