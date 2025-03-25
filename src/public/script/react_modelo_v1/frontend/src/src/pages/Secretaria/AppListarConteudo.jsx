import React from 'react';
import { Eye, Edit, Trash2 } from 'lucide-react';

const AppListarConteudo = ({ secretarias, loading }) => {
  return (
    <div className="table-responsive">
      {/* Campos de Filtro */}
      <div className="row mb-3">
        <div className="col-md-3">
          <label className="form-label">Secretaria</label>
          <input type="text" className="form-control" placeholder="Digite a Secretaria..." />
        </div>
      </div>

      <button className="btn btn-primary mb-3">Aplicar Filtros</button>
      <table className="table table-striped table-hover">
        <thead className="table-dark">
          <tr>
            <th scope="col">ID</th>
            <th scope="col">Nome</th>
            <th scope="col">Email</th>
            <th scope="col">Telefone</th>
            <th scope="col">Ações</th>
          </tr>
        </thead>
        <tbody>
          {secretarias.length > 0 ? (
            <tr>
              <td colSpan="7" className="text-center">Nenhum secretaria encontrado.</td>
            </tr>
          ) : (
            secretarias.map(secretaria => (
              <tr key={secretaria.id}>
                <td>{secretaria.id}</td>
                <td>{secretaria.nome}</td>
                <td>{secretaria.email}</td>
                <td>{secretaria.telefone}</td>
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
    </div >
  );
};

export default AppListarConteudo;