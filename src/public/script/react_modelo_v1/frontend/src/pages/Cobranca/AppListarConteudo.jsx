// C:\laragon\www\sgcpro\src\public\script\react_modelo_v1\frontend\src\pages\Cobranca\AppListarConteudo.jsx
import React from 'react';
import { useEffect, useState } from "react";
import ModalTeste from "../../components/Modal/basicModal";
import './styles.css';

const AppListarConteudo = ({
  lista,
  pagination,
  loading,
  debugMyPrint,
  fetchCobranca,
  fetchPagination,
  children,
}) => {

  // quantidade de paginas;
  const [currentPage, setCurrentPage] = useState(1);
  const pageSize = 10;
  
  const formatDateToPTBR = (dateString) => {
    if (!dateString) return '';
    const parts = dateString.split('-');
    if (parts.length !== 3) return dateString;
    const [year, month, day] = parts;
    return `${day}/${month}/${year}`;
  };

  // Função para lidar com a mudança de página
  const handlePageChange = (newPage) => {
    setCurrentPage(newPage);
    fetchCobranca(newPage, pageSize);
    fetchPagination(newPage, pageSize);
  };

  // Carrega os dados iniciais
  useEffect(() => {
    fetchCobranca(currentPage, pageSize);
    fetchPagination(currentPage, pageSize);
  }, []);


  return (
    <div className="w-full overflow-x-auto p-2">
      {children}
      <table className="table table-striped table-hover">
        <thead>
          <tr className="bg-gray-200">
            <th className="p-2">ID</th>
            <th className="p-2">Circuito</th>
            <th className="p-2">Secretaria</th>
            <th className="p-2">Empresa</th>
            <th className="p-2">Contato</th>
            <th className="p-2">Ativo</th>
            <th className="p-2">Custo Mensal</th>
            <th className="p-2">Data Início</th>
            <th className="p-2">Data Início</th>
            <th className="p-2">Comando</th>
          </tr>
        </thead>
        <tbody>
          {lista.map((listar) => (
            <tr key={listar.id} className="hover:bg-gray-100">
              <td className="p-2 border">{listar.id}</td>
              <td className="p-2 border">{listar.circ_nome}</td>
              <td className="p-2 border">{listar.cad_sigla_pronome_tratamento}</td>
              <td className="p-2 border">{listar.cad_sigla_pronome_tratamento}</td>
              <td className="p-2 border">{listar.cad_nome}<br />{listar.tel_numero}<br />{listar.email_email}</td>
              <td className="p-2 border">
                {(listar.cob_active === 'Y')
                  ? (
                    <div className="d-flex justify-content-center mb-2">
                      <span className="badge text-bg-success">Ativo</span>
                    </div>
                  ) : (
                    <div className="d-flex justify-content-center mb-2">
                      <span className="badge text-bg-danger">Inativo</span>
                    </div>
                  )}
              </td>
              <td className="p-2 border">R$ {listar.cob_custo_mensal}</td>
              <td className="p-2 border">{formatDateToPTBR(listar.cob_data_inicio)}</td>
              <td className="p-2 border">{formatDateToPTBR(listar.cob_data_fim)}</td>
              <td className="p-2 border">
                <ModalTeste
                  idModal={`testeModal_${listar.id}`}
                  buttonName='Ação'
                  strTitleModal='Aqui tem um Título'
                  isOpenInitial={false}
                >
                  TESTE
                </ModalTeste>
              </td>
            </tr>
          ))}
        </tbody>
      </table>

      {/* Componente de Paginação */}
      <nav aria-label="Page navigation example" className="mt-4">
        <ul className="pagination pagination-sm justify-content-center">
          {pagination.map((page, index) => (
            <li
              key={index}
              className={`page-item ${page.disabled ? 'disabled' : ''} ${page.active ? 'active' : ''}`}
            >
              <a
                className="page-link"
                href="#"
                onClick={(e) => {
                  e.preventDefault();
                  if (!page.disabled) {
                    // Extrair o número da página do href
                    const pageNumber = parseInt(page.href.split('=')[1]);
                    handlePageChange(pageNumber);
                  }
                }}
              >
                {page.text}
              </a>
            </li>
          ))}
        </ul>
      </nav>
    </div>
  );
}

export default AppListarConteudo;