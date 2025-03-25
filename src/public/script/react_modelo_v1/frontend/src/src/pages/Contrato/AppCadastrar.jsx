// C:\laragon\www\sgcpro\src\public\script\react_modelo_v1\frontend\src\pages\Contrato\AppCadastrar.jsx
import React, { useState } from 'react';
import { useNavigate } from 'react-router-dom';
import ContratoService from '../../services/contrato';
import AppForm from './AppForm';
import './styles.css';

const AppCadastrar = () => {
  const navigate = useNavigate();
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState(null);
  const [success, setSuccess] = useState(false);

  // Função para lidar com a submissão do formulário
  const handleSubmit = async (formData) => {
    setLoading(true);
    setError(null);

    try {
      // Usando o serviço para criar o Contrato
      const response = await ContratoService.create(formData);

      console.log('Contrato cadastrado com sucesso:', response);
      setSuccess(true);

      // Redirecionar após 2 segundos
      setTimeout(() => {
        navigate('/contrato/listar');
      }, 2000);

    } catch (err) {
      console.error('Erro ao cadastrar Contrato:', err);
      setError(err.response?.data?.message || 'Ocorreu um erro ao cadastrar o Contrato. Por favor, tente novamente.');
    } finally {
      setLoading(false);
    }
  };

  return (
    <div className="container mt-4">
      <div className="card">
        <div className="card-header bg-primary text-white">
          <h2 className="mb-0">Cadastrar Novo Contrato</h2>
        </div>
        <div className="card-body">
          {error && (
            <div className="alert alert-danger" role="alert">
              {error}
            </div>
          )}

          {success && (
            <div className="alert alert-success" role="alert">
              Contrato cadastrado com sucesso! Redirecionando...
            </div>
          )}

          {loading ? (
            <div className="text-center">
              <div className="spinner-border text-primary" role="status">
                <span className="visually-hidden">Carregando...</span>
              </div>
              <p className="mt-2">Processando...</p>
            </div>
          ) : (
            !success && <AppForm onSubmit={handleSubmit} />
          )}
        </div>
      </div>
    </div>
  );
};

export default AppCadastrar;