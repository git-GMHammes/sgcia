// C:\laragon\www\sgcpro\src\public\script\react_modelo_v1\frontend\src\pages\contrato\AppListar.jsx
import React, { useEffect, useState } from 'react';
import AppListarConteudo from './AppListarConteudo';
import contratoService from '../../services/contrato';
import JSONViewer from '../../components/JSONViewer';

const AppListar = () => {
    const [loading, setLoading] = useState(true);
    const [lista, setLista] = useState([]);
    const [pagination, setPagination] = useState([]);
    const [debugMyPrint, setDebugMyPrint] = useState(false);

    const fetchcontrato = async (page = 1, limit = 10) => {
        try {
            setLoading(true);

            // Obter dados usando o método getAll do contratoService
            const response = await contratoService.getAll(page, limit);

            console.log('Resposta do getAll:', response);
            if (response.length > 0) {
                setLista(response);
            }
            setLoading(false);
        } catch (err) {
            console.error('Erro contratos:', err);
            setLoading(false);
        }
    };

    const fetchPagination = async (page = 1, limit = 10) => {
        try {
            setLoading(true);

            // Obter dados usando o método getAll do contratoService
            const response = await contratoService.getPagination(page, limit);

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

        fetchcontrato();
        fetchPagination();
        setDebugMyPrint(true);

    }, []);

    return (
        <div>

            <h3> Listar contratos</h3>

            {loading && <p>Carregando dados...</p>}

            <AppListarConteudo
                lista={lista}
                pagination={pagination}
                loading={loading}
                debugMyPrint={debugMyPrint}
                fetchcontrato={fetchcontrato}
                fetchPagination={fetchPagination}
            >
            </AppListarConteudo>

            {(debugMyPrint) && (
                <div>
                    <JSONViewer
                        data={lista}
                        title="Resposta da API contratos"
                        collapsed = {true}
                    />
                    <JSONViewer
                        data={pagination}
                        title="Resposta da API Pagimnation"
                        collapsed = {true}
                    />
                </div>
            )}

        </div>
    );
};

export default AppListar;