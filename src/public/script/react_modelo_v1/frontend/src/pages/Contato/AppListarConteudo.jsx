// AppListarConteudo.jsx
import React from 'react';
import { Edit, Trash2 } from 'lucide-react';

const AppListarConteudo = ({ contatos }) => {
  return (
    <div className="table-responsive">
      {/* Campos de Filtro */}
      <div className="row mb-3">
        <div className="col-md-3">
          <label className="form-label">Secretaria</label>
          <input type="text" className="form-control" placeholder="Digite a Secretaria..." />
        </div>
        <div className="col-md-3">
          <label className="form-label">Nome</label>
          <input type="text" className="form-control" placeholder="Digite a Nome..." />
        </div>
        <div className="col-md-3">
          <label className="form-label">Email</label>
          <input type="text" className="form-control" placeholder="Digite o email..." />
        </div>
      </div>
      <button className="btn btn-primary mb-3">Aplicar Filtros</button>
      <table className="table table-striped table-hover">
        <thead className="table-dark">
          <tr>
            <th>Secretaria</th>
            <th>Nome</th>
            <th>Email</th>
            <th>Telefone</th>
            <th>Data Início</th>
            <th>Data Fim</th>
            <th>Ações</th>
          </tr>
        </thead>
        <tbody>
          {contatos.length === 0 ? (
            <tr>
              <td colSpan="7" className="text-center">Nenhum contato encontrado.</td>
            </tr>
          ) : (
            contatos.map((contato) => (
              <tr key={contato.id}>
                <td>{contato.secretaria}</td>
                <td>{contato.nome}</td>
                <td>{contato.email}</td>
                <td>{contato.telefone}</td>
                <td>{contato.dataInicio}</td>
                <td>{contato.dataFim}</td>
                <td>
                  <button className="btn btn-sm btn-outline-secondary me-2">
                    <Edit size={16} />
                  </button>
                  <button className="btn btn-sm btn-outline-danger">
                    <Trash2 size={16} />
                  </button>
                </td>
              </tr>
            ))
          )}
        </tbody>
      </table>
    </div>
  );
};

export default AppListarConteudo;