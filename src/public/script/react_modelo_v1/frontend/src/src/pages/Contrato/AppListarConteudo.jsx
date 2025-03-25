// C:\laragon\www\sgcpro\src\public\script\react_modelo_v1\frontend\src\pages\listar\AppListarConteudo.jsx
import React from "react";
import { useEffect, useState } from "react";
import ModalTeste from "../../components/modal/RotateModal";

const AppListarConteudo = ({
    lista,
    pagination,
    loading,
    debugMyPrint,
    fetchContrato,
    fetchPagination,
    children,
}) => {
    // quantidade de paginas;
    const [currentPage, setCurrentPage] = useState(1);
    const pageSize = 10;

    // Função para lidar com a mudança de página
    const handlePageChange = (newPage) => {
        setCurrentPage(newPage);
        fetchContrato(newPage, pageSize);
        fetchPagination(newPage, pageSize);
    };

    // Carrega os dados iniciais
    useEffect(() => {
        fetchContrato(currentPage, pageSize);
        fetchPagination(currentPage, pageSize);
    }, []);

    return (
        <div className="w-full overflow-x-auto p-2">
            {children}
            <table className="table table-striped table-hover">
                <thead>
                    <tr className="bg-gray-200">
                        <th className="p-2">ID</th>
                        <th className="p-2">Sigla</th>
                        <th className="p-2">Nome</th>
                        <th className="p-2">Status</th>
                        <th className="p-2">Data Ativação</th>
                        <th className="p-2">Velocidade ID</th>
                        <th className="p-2">SEI</th>
                        <th className="p-2">Data Cancelamento</th>
                        <th className="p-2">Comando</th>
                    </tr>
                </thead>
                <tbody>
                    {lista.map((listar) => (
                        <tr key={listar.id} className="hover:bg-gray-100">
                            <td className="p-2 border">{listar.id}</td>
                            <td className="p-2 border">{listar.circ_sigla}</td>
                            <td className="p-2 border">{listar.circ_nome}</td>
                            <td className="p-2 border">
                                {(listar.circ_active === 'Y')
                                    ? (
                                        <div className="d-flex justify-content-center mb-2">
                                            <span className="badge text-bg-success">{listar.circ_status}</span>
                                        </div>
                                    ) : (
                                        <div className="d-flex justify-content-center mb-2">
                                            <span className="badge text-bg-danger">{listar.circ_status}</span>
                                        </div>
                                    )}
                            </td>
                            <td className="p-2 border">{listar.circ_data_ativacao}</td>
                            <td className="p-2 border">{listar.vel_velocidade}</td>
                            <td className="p-2 border">{listar.circ_SEI}</td>
                            <td className="p-2 border">{listar.circ_data_cancelamento}</td>
                            <td className="p-2 border">
                                <ModalTeste
                                    idModal = {`testeModal_${listar.id}`}
                                    buttonName = 'Ação'
                                    strTitleModal = 'Aqui tem um Título'
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