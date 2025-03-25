import React, { useEffect, useState } from 'react';
import { useNavigate } from 'react-router-dom';
import { Plus } from 'lucide-react';
import SecretariaService from '../../services/secretaria';
import AppListarConteudo from './AppListarConteudo';
import './styles.css';

const AppListar = () => {
  const navigate = useNavigate();
  const [secretarias, setSecretarias] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);
  const [filtro, setFiltro] = useState('');

  useEffect(() => {
    const fetchSecretarias = async () => {
      setLoading(true);
      setError(null);
      try {
        const data = await SecretariaService.getAll();
        setSecretarias(data);
      } catch (err) {
        setError('Erro ao carregar secretarias.');
      } finally {
        setLoading(false);
      }
    };
    fetchSecretarias();
  }, []);

  const secretariasFiltrados = secretarias.filter(secretaria =>
    secretaria.nome.toLowerCase().includes(filtro.toLowerCase())
  );

  return (
    <div className="container mt-4">
      <div className="card">
        <div className="card-header bg-primary text-white d-flex justify-content-between align-items-center">
          <h2 className="mb-0">Lista de Secretarias</h2>
          <button
            className="btn btn-light"
            onClick={() => navigate('/secretaria/cadastrar')}
          >
            <Plus size={18} className="me-1" /> Nova Secretaria
          </button>
        </div>
        <div className="card-body">
          {error && <div className="alert alert-danger">{error}</div>}
          {loading ? (
            <p>Carregando...</p>
          ) : (
            <AppListarConteudo secretarias={secretariasFiltrados} />
          )}
        </div>
      </div>
    </div>
  );
};

export default AppListar;