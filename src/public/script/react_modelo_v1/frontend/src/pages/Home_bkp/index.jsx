import React from 'react';
import ENV, { getBaseUrl } from '../../config/env'; 
import { Link } from 'react-router-dom';
import './styles.css';
import circuitosProderj from '../../assets/images/circuitosProderj.jpeg';
import govBrLogo from "../../assets/images/govbr-logo-large.png"; // Ajuste se precisar

const Home = () => {
    const base_url = getBaseUrl(); // Agora retorna '/api/index.php/'
    const api_post_objeto = 'sgcpro/usuario/endpoint/listar';
    const getVar_page = '?page=1';

    // Estado do formulário
    const [formData, setFormData] = React.useState({
        id: 0,
        nome: '',
        descricao: '',
        data_criacao: '',
        data_atualizacao: ''
    });
    
    // POST Padrão com proxy
    const fetchPost = async () => {
        // Construir a URL para usar o proxy do Vite
        const url = `${base_url}${api_post_objeto}${getVar_page}`;
        console.log('fetchPost - url:', url);
        
        try {
            const response = await fetch(url, {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                },
                body: JSON.stringify(formData),
            });
            
            if (!response.ok) {
                throw new Error(`HTTP error! Status: ${response.status}`);
            }
            
            const data = await response.json();
            console.log('fetchPost - data:', data);
            
            if (data.result && Array.isArray(data.result)) {
                setFormData((prev) => ({
                    ...prev
                }));
            } else {
                console.error('Erro ao enviar dados');
            }
        } catch (error) {
            console.error('Erro ao enviar dados:', error);
            return false;
        }
    };

    React.useEffect(() => {
        console.log('React.useEffect - Carregar Dados Iniciais');

        // Função para carregar todos os dados necessários
        const loadData = async () => {
            console.log('loadData iniciando...');
            try {
                await fetchPost();
            } catch (error) {
                console.error('Erro ao carregar dados:', error);
            } finally {
                console.log('loadData finalizando...');
            }
        };

        loadData();
    }, []);

    return (
        <div className="container">

            {/*<div>
                <h2>Informações do Ambiente</h2>
                <p><strong>Ambiente atual:</strong> {ENV.CURRENT}</p>
                <p><strong>URL Base:</strong> {getBaseUrl()}</p>
            </div> 

            {/* Hero Section */}
            <section className="row align-items-center mb-5 text-center">
                <div className="col-md-6 mx-auto">
                    <a href="URL_DO_LOGIN" className="govbr-button">
                        <span className="govbr-text">Acesse com</span>
                        <img src={govBrLogo} alt="Gov.BR" className="govbr-logo" />
                    </a>
                </div>
            </section>

            {/* Features Section 
            <section className="mb-5">
                <h2 className="text-center text-primary mb-4">Principais Funcionalidades</h2>
                <div className="row g-4">
                    <div className="col-md-4">
                        <div className="card h-100 shadow-sm">
                            <div className="card-body">
                                <h3 className="card-title h5 text-primary">Circuitos</h3>
                                <p className="card-text">Gerencie todos os circuitos com facilidade</p>
                                <Link to="/circuitos" className="btn btn-sm btn-link text-primary p-0">Acessar</Link>
                            </div>
                        </div>
                    </div>
                    <div className="col-md-4">
                        <div className="card h-100 shadow-sm">
                            <div className="card-body">
                                <h3 className="card-title h5 text-primary">Secretarias</h3>
                                <p className="card-text">Cadastre e gerencie informações de secretarias</p>
                                <Link to="/secretarias" className="btn btn-sm btn-link text-primary p-0">Acessar</Link>
                            </div>
                        </div>
                    </div>
                    <div className="col-md-4">
                        <div className="card h-100 shadow-sm">
                            <div className="card-body">
                                <h3 className="card-title h5 text-primary">Contratos</h3>
                                <p className="card-text">Acompanhe todos os contratos ativos</p>
                                <Link to="/contratos" className="btn btn-sm btn-link text-primary p-0">Acessar</Link>
                            </div>
                        </div>
                    </div>
                </div>
            </section> */}
        </div>
    );
};

export default Home;