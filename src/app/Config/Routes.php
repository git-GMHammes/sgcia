<?php

use CodeIgniter\Router\RouteCollection;

/**
 * @var RouteCollection $routes
 */
$routes->get('/', 'Home::index');

$routes->group('sgcpro', function ($routes) {
    # www/index.php/sgcpro/telefone/(:any)
    $routes->group('telefone', function ($routes) {
        # www/index.php/sgcpro/telefone/api/(:any)
        $routes->group('api', function ($routes) {
            # www/index.php/sgcpro/telefone/api/salvar/(:any)
            $routes->get('salvar', 'Telefone\ApiController::create_update');
            $routes->get('salvar/(:segment)', 'Telefone\ApiController::create_update/$1');
            $routes->get('salvar/(:any)', 'Telefone\ApiController::create_update/$1');
            $routes->post('salvar', 'Telefone\ApiController::create_update');
            $routes->post('salvar/(:any)', 'Telefone\ApiController::create_update/$1');
            # www/index.php/sgcpro/telefone/api/listar/(:any)
            $routes->get('listar', 'Telefone\ApiController::dbRead');
            $routes->get('listar/(:segment)', 'Telefone\ApiController::dbRead/$1');
            $routes->get('listar/(:any)', 'Telefone\ApiController::dbRead/$1');
            $routes->post('listar', 'Telefone\ApiController::dbRead');
            $routes->post('listar/(:any)', 'Telefone\ApiController::dbRead/$1');
            # www/index.php/sgcpro/telefone/api/filtrar/(:any)
            $routes->get('filtrar', 'Telefone\ApiController::dbFilter');
            $routes->get('filtrar/(:segment)', 'Telefone\ApiController::dbFilter/$1');
            $routes->get('filtrar/(:any)', 'Telefone\ApiController::dbFilter/$1');
            $routes->post('filtrar', 'Telefone\ApiController::dbFilter');
            $routes->post('filtrar/(:any)', 'Telefone\ApiController::dbFilter/$1');
            # www/index.php/sgcpro/telefone/api/deletar/(:any)
            $routes->get('deletar', 'Telefone\ApiController::dbDelete');
            $routes->get('deletar/(:segment)', 'Telefone\ApiController::dbDelete/$1');
            $routes->get('deletar/(:any)', 'Telefone\ApiController::dbDelete/$1');
            $routes->post('deletar', 'Telefone\ApiController::dbDelete');
            $routes->post('deletar/(:any)', 'Telefone\ApiController::dbDelete/$1');
            # www/index.php/sgcpro/telefone/api/limpar/(:any)
            $routes->get('limpar', 'Telefone\ApiController::clear');
            $routes->get('limpar/(:segment)', 'Telefone\ApiController::clear/$1');
            $routes->get('limpar/(:any)', 'Telefone\ApiController::clear/$1');
            $routes->post('limpar', 'Telefone\ApiController::clear');
            $routes->post('limpar/(:any)', 'Telefone\ApiController::clear/$1');
        });
        # www/index.php/sgcpro/telefone/endpoint/(:any)
        $routes->group('endpoint', function ($routes) {
            # www/index.php/sgcpro/telefone/endpoint/cadastrar/(:any)
            $routes->get('cadastrar', 'Telefone\EndpointController::dbCreate');
            $routes->get('cadastrar/(:segment)', 'Telefone\EndpointController::dbCreate/$1');
            $routes->get('cadastrar/(:any)', 'Telefone\EndpointController::dbCreate/$1');
            $routes->post('cadastrar', 'Telefone\EndpointController::dbCreate');
            $routes->post('cadastrar/(:any)', 'Telefone\EndpointController::dbCreate/$1');
            # www/index.php/sgcpro/telefone/endpoint/listar/(:any)
            $routes->get('listar', 'Telefone\EndpointController::dbRead');
            $routes->get('listar/(:segment)', 'Telefone\EndpointController::dbRead/$1');
            $routes->get('listar/(:any)', 'Telefone\EndpointController::dbRead/$1');
            $routes->post('listar', 'Telefone\EndpointController::dbRead');
            $routes->post('listar/(:any)', 'Telefone\EndpointController::dbRead/$1');
            # www/index.php/sgcpro/telefone/endpoint/deletar/(:any)
            $routes->get('deletar', 'Telefone\EndpointController::dbDelete');
            $routes->get('deletar/(:segment)', 'Telefone\EndpointController::dbDelete/$1');
            $routes->get('deletar/(:any)', 'Telefone\EndpointController::dbDelete/$1');
            $routes->post('deletar', 'Telefone\EndpointController::dbDelete');
            $routes->post('deletar/(:any)', 'Setor\EndpointController::dbDelete/$1');
        });
    });
    # www/index.php/sgcpro/email/(:any)
    $routes->group('email', function ($routes) {
        # www/index.php/sgcpro/email/api/(:any)
        $routes->group('api', function ($routes) {
            # www/index.php/sgcpro/email/api/salvar/(:any)
            $routes->get('salvar', 'Email\ApiController::create_update');
            $routes->get('salvar/(:segment)', 'Email\ApiController::create_update/$1');
            $routes->get('salvar/(:any)', 'Email\ApiController::create_update/$1');
            $routes->post('salvar', 'Email\ApiController::create_update');
            $routes->post('salvar/(:any)', 'Email\ApiController::create_update/$1');
            # www/index.php/sgcpro/email/api/listar/(:any)
            $routes->get('listar', 'Email\ApiController::dbRead');
            $routes->get('listar/(:segment)', 'Email\ApiController::dbRead/$1');
            $routes->get('listar/(:any)', 'Email\ApiController::dbRead/$1');
            $routes->post('listar', 'Email\ApiController::dbRead');
            $routes->post('listar/(:any)', 'Email\ApiController::dbRead/$1');
            # www/index.php/sgcpro/email/api/filtrar/(:any)
            $routes->get('filtrar', 'Email\ApiController::dbFilter');
            $routes->get('filtrar/(:segment)', 'Email\ApiController::dbFilter/$1');
            $routes->get('filtrar/(:any)', 'Email\ApiController::dbFilter/$1');
            $routes->post('filtrar', 'Email\ApiController::dbFilter');
            $routes->post('filtrar/(:any)', 'Email\ApiController::dbFilter/$1');
            # www/index.php/sgcpro/email/api/deletar/(:any)
            $routes->get('deletar', 'Email\ApiController::dbDelete');
            $routes->get('deletar/(:segment)', 'Email\ApiController::dbDelete/$1');
            $routes->get('deletar/(:any)', 'Email\ApiController::dbDelete/$1');
            $routes->post('deletar', 'Email\ApiController::dbDelete');
            $routes->post('deletar/(:any)', 'Email\ApiController::dbDelete/$1');
            # www/index.php/sgcpro/email/api/limpar/(:any)
            $routes->get('limpar', 'Email\ApiController::clear');
            $routes->get('limpar/(:segment)', 'Email\ApiController::clear/$1');
            $routes->get('limpar/(:any)', 'Email\ApiController::clear/$1');
            $routes->post('limpar', 'Email\ApiController::clear');
            $routes->post('limpar/(:any)', 'Email\ApiController::clear/$1');
        });
        # www/index.php/sgcpro/email/endpoint/(:any)
        $routes->group('endpoint', function ($routes) {
            # www/index.php/sgcpro/email/endpoint/cadastrar/(:any)
            $routes->get('cadastrar', 'Email\EndpointController::dbCreate');
            $routes->get('cadastrar/(:segment)', 'Email\EndpointController::dbCreate/$1');
            $routes->get('cadastrar/(:any)', 'Email\EndpointController::dbCreate/$1');
            $routes->post('cadastrar', 'Email\EndpointController::dbCreate');
            $routes->post('cadastrar/(:any)', 'Email\EndpointController::dbCreate/$1');
            # www/index.php/sgcpro/email/endpoint/listar/(:any)
            $routes->get('listar', 'Email\EndpointController::dbRead');
            $routes->get('listar/(:segment)', 'Email\EndpointController::dbRead/$1');
            $routes->get('listar/(:any)', 'Email\EndpointController::dbRead/$1');
            $routes->post('listar', 'Email\EndpointController::dbRead');
            $routes->post('listar/(:any)', 'Email\EndpointController::dbRead/$1');
            # www/index.php/sgcpro/email/endpoint/deletar/(:any)
            $routes->get('deletar', 'Email\EndpointController::dbDelete');
            $routes->get('deletar/(:segment)', 'Email\EndpointController::dbDelete/$1');
            $routes->get('deletar/(:any)', 'Email\EndpointController::dbDelete/$1');
            $routes->post('deletar', 'Email\EndpointController::dbDelete');
            $routes->post('deletar/(:any)', 'Setor\EndpointController::dbDelete/$1');
        });
    });
    # www/index.php/sgcpro/email/(:any)
    $routes->group('endereco', function ($routes) {
        # www/index.php/sgcpro/endereco/api/(:any)
        $routes->group('api', function ($routes) {
            # www/index.php/sgcpro/endereco/api/salvar/(:any)
            $routes->get('salvar', 'Endereco\ApiController::create_update');
            $routes->get('salvar/(:segment)', 'Endereco\ApiController::create_update/$1');
            $routes->get('salvar/(:any)', 'Endereco\ApiController::create_update/$1');
            $routes->post('salvar', 'Endereco\ApiController::create_update');
            $routes->post('salvar/(:any)', 'Endereco\ApiController::create_update/$1');
            # www/index.php/sgcpro/endereco/api/listar/(:any)
            $routes->get('listar', 'Endereco\ApiController::dbRead');
            $routes->get('listar/(:segment)', 'Endereco\ApiController::dbRead/$1');
            $routes->get('listar/(:any)', 'Endereco\ApiController::dbRead/$1');
            $routes->post('listar', 'Endereco\ApiController::dbRead');
            $routes->post('listar/(:any)', 'Endereco\ApiController::dbRead/$1');
            # www/index.php/sgcpro/endereco/api/filtrar/(:any)
            $routes->get('filtrar', 'Endereco\ApiController::dbFilter');
            $routes->get('filtrar/(:segment)', 'Endereco\ApiController::dbFilter/$1');
            $routes->get('filtrar/(:any)', 'Endereco\ApiController::dbFilter/$1');
            $routes->post('filtrar', 'Endereco\ApiController::dbFilter');
            $routes->post('filtrar/(:any)', 'Endereco\ApiController::dbFilter/$1');
            # www/index.php/sgcpro/endereco/api/deletar/(:any)
            $routes->get('deletar', 'Endereco\ApiController::dbDelete');
            $routes->get('deletar/(:segment)', 'Endereco\ApiController::dbDelete/$1');
            $routes->get('deletar/(:any)', 'Endereco\ApiController::dbDelete/$1');
            $routes->post('deletar', 'Endereco\ApiController::dbDelete');
            $routes->post('deletar/(:any)', 'Endereco\ApiController::dbDelete/$1');
            # www/index.php/sgcpro/endereco/api/limpar/(:any)
            $routes->get('limpar', 'Endereco\ApiController::clear');
            $routes->get('limpar/(:segment)', 'Endereco\ApiController::clear/$1');
            $routes->get('limpar/(:any)', 'Endereco\ApiController::clear/$1');
            $routes->post('limpar', 'Endereco\ApiController::clear');
            $routes->post('limpar/(:any)', 'Endereco\ApiController::clear/$1');
        });
        # www/index.php/sgcpro/endereco/endpoint/(:any)
        $routes->group('endpoint', function ($routes) {
            # www/index.php/sgcpro/endereco/endpoint/cadastrar/(:any)
            $routes->get('cadastrar', 'Endereco\EndpointController::dbCreate');
            $routes->get('cadastrar/(:segment)', 'Endereco\EndpointController::dbCreate/$1');
            $routes->get('cadastrar/(:any)', 'Endereco\EndpointController::dbCreate/$1');
            $routes->post('cadastrar', 'Endereco\EndpointController::dbCreate');
            $routes->post('cadastrar/(:any)', 'Endereco\EndpointController::dbCreate/$1');
            # www/index.php/sgcpro/endereco/endpoint/listar/(:any)
            $routes->get('listar', 'Endereco\EndpointController::dbRead');
            $routes->get('listar/(:segment)', 'Endereco\EndpointController::dbRead/$1');
            $routes->get('listar/(:any)', 'Endereco\EndpointController::dbRead/$1');
            $routes->post('listar', 'Endereco\EndpointController::dbRead');
            $routes->post('listar/(:any)', 'Endereco\EndpointController::dbRead/$1');
            # www/index.php/sgcpro/endereco/endpoint/deletar/(:any)
            $routes->get('deletar', 'Endereco\EndpointController::dbDelete');
            $routes->get('deletar/(:segment)', 'Endereco\EndpointController::dbDelete/$1');
            $routes->get('deletar/(:any)', 'Endereco\EndpointController::dbDelete/$1');
            $routes->post('deletar', 'Endereco\EndpointController::dbDelete');
            $routes->post('deletar/(:any)', 'Setor\EndpointController::dbDelete/$1');
        });
    });
    # www/index.php/sgcpro/contato/(:any)
    $routes->group('contato', function ($routes) {
        # www/index.php/sgcpro/contato/api/(:any)
        $routes->group('api', function ($routes) {
            # www/index.php/sgcpro/contato/api/salvar/(:any)
            $routes->get('salvar', 'Contato\ApiController::create_update');
            $routes->get('salvar/(:segment)', 'Contato\ApiController::create_update/$1');
            $routes->get('salvar/(:any)', 'Contato\ApiController::create_update/$1');
            $routes->post('salvar', 'Contato\ApiController::create_update');
            $routes->post('salvar/(:any)', 'Contato\ApiController::create_update/$1');
            # www/index.php/sgcpro/contato/api/listar/(:any)
            $routes->get('listar', 'Contato\ApiController::dbRead');
            $routes->get('listar/(:segment)', 'Contato\ApiController::dbRead/$1');
            $routes->get('listar/(:any)', 'Contato\ApiController::dbRead/$1');
            $routes->post('listar', 'Contato\ApiController::dbRead');
            $routes->post('listar/(:any)', 'Contato\ApiController::dbRead/$1');
            # www/index.php/sgcpro/contato/api/filtrar/(:any)
            $routes->get('filtrar', 'Contato\ApiController::dbFilter');
            $routes->get('filtrar/(:segment)', 'Contato\ApiController::dbFilter/$1');
            $routes->get('filtrar/(:any)', 'Contato\ApiController::dbFilter/$1');
            $routes->post('filtrar', 'Contato\ApiController::dbFilter');
            $routes->post('filtrar/(:any)', 'Contato\ApiController::dbFilter/$1');
            # www/index.php/sgcpro/contato/api/deletar/(:any)
            $routes->get('deletar', 'Contato\ApiController::dbDelete');
            $routes->get('deletar/(:segment)', 'Contato\ApiController::dbDelete/$1');
            $routes->get('deletar/(:any)', 'Contato\ApiController::dbDelete/$1');
            $routes->post('deletar', 'Contato\ApiController::dbDelete');
            $routes->post('deletar/(:any)', 'Contato\ApiController::dbDelete/$1');
            # www/index.php/sgcpro/contato/api/limpar/(:any)
            $routes->get('limpar', 'Contato\ApiController::clear');
            $routes->get('limpar/(:segment)', 'Contato\ApiController::clear/$1');
            $routes->get('limpar/(:any)', 'Contato\ApiController::clear/$1');
            $routes->post('limpar', 'Contato\ApiController::clear');
            $routes->post('limpar/(:any)', 'Contato\ApiController::clear/$1');
        });
        # www/index.php/sgcpro/contato/endpoint/(:any)
        $routes->group('endpoint', function ($routes) {
            # www/index.php/sgcpro/contato/endpoint/cadastrar/(:any)
            $routes->get('cadastrar', 'Contato\EndpointController::dbCreate');
            $routes->get('cadastrar/(:segment)', 'Contato\EndpointController::dbCreate/$1');
            $routes->get('cadastrar/(:any)', 'Contato\EndpointController::dbCreate/$1');
            $routes->post('cadastrar', 'Contato\EndpointController::dbCreate');
            $routes->post('cadastrar/(:any)', 'Contato\EndpointController::dbCreate/$1');
            # www/index.php/sgcpro/contato/endpoint/listar/(:any)
            $routes->get('listar', 'Contato\EndpointController::dbRead');
            $routes->get('listar/(:segment)', 'Contato\EndpointController::dbRead/$1');
            $routes->get('listar/(:any)', 'Contato\EndpointController::dbRead/$1');
            $routes->post('listar', 'Contato\EndpointController::dbRead');
            $routes->post('listar/(:any)', 'Contato\EndpointController::dbRead/$1');
            # www/index.php/sgcpro/contato/endpoint/deletar/(:any)
            $routes->get('deletar', 'Contato\EndpointController::dbDelete');
            $routes->get('deletar/(:segment)', 'Contato\EndpointController::dbDelete/$1');
            $routes->get('deletar/(:any)', 'Contato\EndpointController::dbDelete/$1');
            $routes->post('deletar', 'Contato\EndpointController::dbDelete');
            $routes->post('deletar/(:any)', 'Setor\EndpointController::dbDelete/$1');
        });
    });
    # www/index.php/sgcpro/secretaria/(:any)
    $routes->group('secretaria', function ($routes) {
        # www/index.php/sgcpro/secretaria/api/(:any)
        $routes->group('api', function ($routes) {
            # www/index.php/sgcpro/secretaria/api/salvar/(:any)
            $routes->get('salvar', 'Secretaria\ApiController::create_update');
            $routes->get('salvar/(:segment)', 'Secretaria\ApiController::create_update/$1');
            $routes->get('salvar/(:any)', 'Secretaria\ApiController::create_update/$1');
            $routes->post('salvar', 'Secretaria\ApiController::create_update');
            $routes->post('salvar/(:any)', 'Secretaria\ApiController::create_update/$1');
            # www/index.php/sgcpro/secretaria/api/listar/(:any)
            $routes->get('listar', 'Secretaria\ApiController::dbRead');
            $routes->get('listar/(:segment)', 'Secretaria\ApiController::dbRead/$1');
            $routes->get('listar/(:any)', 'Secretaria\ApiController::dbRead/$1');
            $routes->post('listar', 'Secretaria\ApiController::dbRead');
            $routes->post('listar/(:any)', 'Secretaria\ApiController::dbRead/$1');
            # www/index.php/sgcpro/secretaria/api/filtrar/(:any)
            $routes->get('filtrar', 'Secretaria\ApiController::dbFilter');
            $routes->get('filtrar/(:segment)', 'Secretaria\ApiController::dbFilter/$1');
            $routes->get('filtrar/(:any)', 'Secretaria\ApiController::dbFilter/$1');
            $routes->post('filtrar', 'Secretaria\ApiController::dbFilter');
            $routes->post('filtrar/(:any)', 'Secretaria\ApiController::dbFilter/$1');
            # www/index.php/sgcpro/secretaria/api/deletar/(:any)
            $routes->get('deletar', 'Secretaria\ApiController::dbDelete');
            $routes->get('deletar/(:segment)', 'Secretaria\ApiController::dbDelete/$1');
            $routes->get('deletar/(:any)', 'Secretaria\ApiController::dbDelete/$1');
            $routes->post('deletar', 'Secretaria\ApiController::dbDelete');
            $routes->post('deletar/(:any)', 'Secretaria\ApiController::dbDelete/$1');
            # www/index.php/sgcpro/secretaria/api/limpar/(:any)
            $routes->get('limpar', 'Secretaria\ApiController::clear');
            $routes->get('limpar/(:segment)', 'Secretaria\ApiController::clear/$1');
            $routes->get('limpar/(:any)', 'Secretaria\ApiController::clear/$1');
            $routes->post('limpar', 'Secretaria\ApiController::clear');
            $routes->post('limpar/(:any)', 'Secretaria\ApiController::clear/$1');
        });
        # www/index.php/sgcpro/secretaria/endpoint/(:any)
        $routes->group('endpoint', function ($routes) {
            # www/index.php/sgcpro/secretaria/endpoint/cadastrar/(:any)
            $routes->get('cadastrar', 'Secretaria\EndpointController::dbCreate');
            $routes->get('cadastrar/(:segment)', 'Secretaria\EndpointController::dbCreate/$1');
            $routes->get('cadastrar/(:any)', 'Secretaria\EndpointController::dbCreate/$1');
            $routes->post('cadastrar', 'Secretaria\EndpointController::dbCreate');
            $routes->post('cadastrar/(:any)', 'Secretaria\EndpointController::dbCreate/$1');
            # www/index.php/sgcpro/secretaria/endpoint/listar/(:any)
            $routes->get('listar', 'Secretaria\EndpointController::dbRead');
            $routes->get('listar/(:segment)', 'Secretaria\EndpointController::dbRead/$1');
            $routes->get('listar/(:any)', 'Secretaria\EndpointController::dbRead/$1');
            $routes->post('listar', 'Secretaria\EndpointController::dbRead');
            $routes->post('listar/(:any)', 'Secretaria\EndpointController::dbRead/$1');
            # www/index.php/sgcpro/secretaria/endpoint/deletar/(:any)
            $routes->get('deletar', 'Secretaria\EndpointController::dbDelete');
            $routes->get('deletar/(:segment)', 'Secretaria\EndpointController::dbDelete/$1');
            $routes->get('deletar/(:any)', 'Secretaria\EndpointController::dbDelete/$1');
            $routes->post('deletar', 'Secretaria\EndpointController::dbDelete');
            $routes->post('deletar/(:any)', 'Setor\EndpointController::dbDelete/$1');
        });
    });
    # www/index.php/sgcpro/empresa/(:any)
    $routes->group('empresa', function ($routes) {
        # www/index.php/sgcpro/empresa/api/(:any)
        $routes->group('api', function ($routes) {
            # www/index.php/sgcpro/empresa/api/salvar/(:any)
            $routes->get('salvar', 'Empresa\ApiController::create_update');
            $routes->get('salvar/(:segment)', 'Empresa\ApiController::create_update/$1');
            $routes->get('salvar/(:any)', 'Empresa\ApiController::create_update/$1');
            $routes->post('salvar', 'Empresa\ApiController::create_update');
            $routes->post('salvar/(:any)', 'Empresa\ApiController::create_update/$1');
            # www/index.php/sgcpro/empresa/api/listar/(:any)
            $routes->get('listar', 'Empresa\ApiController::dbRead');
            $routes->get('listar/(:segment)', 'Empresa\ApiController::dbRead/$1');
            $routes->get('listar/(:any)', 'Empresa\ApiController::dbRead/$1');
            $routes->post('listar', 'Empresa\ApiController::dbRead');
            $routes->post('listar/(:any)', 'Empresa\ApiController::dbRead/$1');
            # www/index.php/sgcpro/empresa/api/filtrar/(:any)
            $routes->get('filtrar', 'Empresa\ApiController::dbFilter');
            $routes->get('filtrar/(:segment)', 'Empresa\ApiController::dbFilter/$1');
            $routes->get('filtrar/(:any)', 'Empresa\ApiController::dbFilter/$1');
            $routes->post('filtrar', 'Empresa\ApiController::dbFilter');
            $routes->post('filtrar/(:any)', 'Empresa\ApiController::dbFilter/$1');
            # www/index.php/sgcpro/empresa/api/deletar/(:any)
            $routes->get('deletar', 'Empresa\ApiController::dbDelete');
            $routes->get('deletar/(:segment)', 'Empresa\ApiController::dbDelete/$1');
            $routes->get('deletar/(:any)', 'Empresa\ApiController::dbDelete/$1');
            $routes->post('deletar', 'Empresa\ApiController::dbDelete');
            $routes->post('deletar/(:any)', 'Empresa\ApiController::dbDelete/$1');
            # www/index.php/sgcpro/empresa/api/limpar/(:any)
            $routes->get('limpar', 'Empresa\ApiController::clear');
            $routes->get('limpar/(:segment)', 'Empresa\ApiController::clear/$1');
            $routes->get('limpar/(:any)', 'Empresa\ApiController::clear/$1');
            $routes->post('limpar', 'Empresa\ApiController::clear');
            $routes->post('limpar/(:any)', 'Empresa\ApiController::clear/$1');
        });
        # www/index.php/sgcpro/empresa/endpoint/(:any)
        $routes->group('endpoint', function ($routes) {
            # www/index.php/sgcpro/empresa/endpoint/cadastrar/(:any)
            $routes->get('cadastrar', 'Empresa\EndpointController::dbCreate');
            $routes->get('cadastrar/(:segment)', 'Empresa\EndpointController::dbCreate/$1');
            $routes->get('cadastrar/(:any)', 'Empresa\EndpointController::dbCreate/$1');
            $routes->post('cadastrar', 'Empresa\EndpointController::dbCreate');
            $routes->post('cadastrar/(:any)', 'Empresa\EndpointController::dbCreate/$1');
            # www/index.php/sgcpro/empresa/endpoint/listar/(:any)
            $routes->get('listar', 'Empresa\EndpointController::dbRead');
            $routes->get('listar/(:segment)', 'Empresa\EndpointController::dbRead/$1');
            $routes->get('listar/(:any)', 'Empresa\EndpointController::dbRead/$1');
            $routes->post('listar', 'Empresa\EndpointController::dbRead');
            $routes->post('listar/(:any)', 'Empresa\EndpointController::dbRead/$1');
            # www/index.php/sgcpro/empresa/endpoint/atualizar/(:any)
            $routes->get('atualizar', 'Empresa\EndpointController::dbUpdate');
            $routes->get('atualizar/(:segment)', 'Empresa\EndpointController::dbUpdate/$1');
            $routes->get('atualizar/(:any)', 'Empresa\EndpointController::dbUpdate/$1');
            $routes->post('atualizar', 'Empresa\EndpointController::dbUpdate');
            $routes->post('atualizar/(:any)', 'Empresa\EndpointController::dbUpdate/$1');
            # www/index.php/sgcpro/empresa/endpoint/deletar/(:any)
            $routes->get('deletar', 'Empresa\EndpointController::dbDelete');
            $routes->get('deletar/(:segment)', 'Empresa\EndpointController::dbDelete/$1');
            $routes->get('deletar/(:any)', 'Empresa\EndpointController::dbDelete/$1');
            $routes->post('deletar', 'Empresa\EndpointController::dbDelete');
            $routes->post('deletar/(:any)', 'Empresa\EndpointController::dbDelete/$1');
        });
    });
    # www/index.php/sgcpro/usuario/(:any)
    $routes->group('autenticar', function ($routes) {
        # www/index.php/sgcpro/autenticar/api/(:any)
        $routes->group('api', function ($routes) {
            # www/index.php/sgcpro/autenticar/api/react/(:any)
            $routes->get('react', 'Auth\ApiController::AuthReact');
            $routes->get('react/(:segment)', 'Auth\ApiController::AuthReact/$1');
            $routes->get('react/(:any)', 'Auth\ApiController::AuthReact/$1');
            $routes->post('react', 'Auth\ApiController::AuthReact');
            $routes->post('react/(:any)', 'Auth\ApiController::AuthReact/$1');
            # www/index.php/sgcpro/autenticar/api/salvar/(:any)
            $routes->get('salvar', 'Auth\ApiController::create_update');
            $routes->get('salvar/(:segment)', 'Auth\ApiController::create_update/$1');
            $routes->get('salvar/(:any)', 'Auth\ApiController::create_update/$1');
            $routes->post('salvar', 'Auth\ApiController::create_update');
            $routes->post('salvar/(:any)', 'Auth\ApiController::create_update/$1');
            # www/index.php/sgcpro/autenticar/api/listar/(:any)
            $routes->get('listar', 'Auth\ApiController::dbRead');
            $routes->get('listar/(:segment)', 'Auth\ApiController::dbRead/$1');
            $routes->get('listar/(:any)', 'Auth\ApiController::dbRead/$1');
            $routes->post('listar', 'Auth\ApiController::dbRead');
            $routes->post('listar/(:any)', 'Auth\ApiController::dbRead/$1');
            # www/index.php/sgcpro/autenticar/api/filtrar/(:any)
            $routes->get('filtrar', 'Auth\ApiController::dbFilter');
            $routes->get('filtrar/(:segment)', 'Auth\ApiController::dbFilter/$1');
            $routes->get('filtrar/(:any)', 'Auth\ApiController::dbFilter/$1');
            $routes->post('filtrar', 'Auth\ApiController::dbFilter');
            $routes->post('filtrar/(:any)', 'Auth\ApiController::dbFilter/$1');
            # www/index.php/sgcpro/autenticar/api/deletar/(:any)
            $routes->get('deletar', 'Auth\ApiController::dbDelete');
            $routes->get('deletar/(:segment)', 'Auth\ApiController::dbDelete/$1');
            $routes->get('deletar/(:any)', 'Auth\ApiController::dbDelete/$1');
            $routes->post('deletar', 'Auth\ApiController::dbDelete');
            $routes->post('deletar/(:any)', 'Auth\ApiController::dbDelete/$1');
            # www/index.php/sgcpro/autenticar/api/limpar/(:any)
            $routes->get('limpar', 'Auth\ApiController::clear');
            $routes->get('limpar/(:segment)', 'Auth\ApiController::clear/$1');
            $routes->get('limpar/(:any)', 'Auth\ApiController::clear/$1');
            $routes->post('limpar', 'Auth\ApiController::clear');
            $routes->post('limpar/(:any)', '\ApiController::clear/$1');
        });
        # www/index.php/sgcpro/autenticar/endpoint/(Auth:any)
        $routes->group('endpoint', function ($routes) {
            # www/index.php/sgcpro/autenticar/endpoint/cadastrar/(:any)
            $routes->get('cadastrar', 'Auth\EndpointController::dbCreate');
            $routes->get('cadastrar/(:segment)', 'Auth\EndpointController::dbCreate/$1');
            $routes->get('cadastrar/(:any)', 'Auth\EndpointController::dbCreate/$1');
            $routes->post('cadastrar', 'Auth\EndpointController::dbCreate');
            $routes->post('cadastrar/(:any)', 'Auth\EndpointController::dbCreate/$1');
            # www/index.php/sgcpro/autenticar/endpoint/listar/(:any)
            $routes->get('listar', 'Auth\EndpointController::dbRead');
            $routes->get('listar/(:segment)', 'Auth\EndpointController::dbRead/$1');
            $routes->get('listar/(:any)', 'Auth\EndpointController::dbRead/$1');
            $routes->post('listar', 'Auth\EndpointController::dbRead');
            $routes->post('listar/(:any)', 'Auth\EndpointController::dbRead/$1');
            # www/index.php/sgcpro/autenticar/endpoint/atualizar/(:any)
            $routes->get('atualizar', 'Auth\EndpointController::dbUpdate');
            $routes->get('atualizar/(:segment)', 'Auth\EndpointController::dbUpdate/$1');
            $routes->get('atualizar/(:any)', 'Auth\EndpointController::dbUpdate/$1');
            $routes->post('atualizar', 'Auth\EndpointController::dbUpdate');
            $routes->post('atualizar/(:any)', 'Auth\EndpointController::dbUpdate/$1');
            # www/index.php/sgcpro/autenticar/endpoint/deletar/(:any)
            $routes->get('deletar', 'Auth\EndpointController::dbDelete');
            $routes->get('deletar/(:segment)', 'Auth\EndpointController::dbDelete/$1');
            $routes->get('deletar/(:any)', 'Auth\EndpointController::dbDelete/$1');
            $routes->post('deletar', 'Auth\EndpointController::dbDelete');
            $routes->post('deletar/(:any)', 'Auth\EndpointController::dbDelete/$1');
        });
    });
    # www/index.php/sgcpro/usuario/(:any)
    $routes->group('usuario', function ($routes) {
        # www/index.php/sgcpro/usuario/api/(:any)
        $routes->group('api', function ($routes) {
            # www/index.php/sgcpro/usuario/api/salvar/(:any)
            $routes->get('salvar', 'Usuario\ApiController::create_update');
            $routes->get('salvar/(:segment)', 'Usuario\ApiController::create_update/$1');
            $routes->get('salvar/(:any)', 'Usuario\ApiController::create_update/$1');
            $routes->post('salvar', 'Usuario\ApiController::create_update');
            $routes->post('salvar/(:any)', 'Usuario\ApiController::create_update/$1');
            # www/index.php/sgcpro/usuario/api/listar/(:any)
            $routes->get('listar', 'Usuario\ApiController::dbRead');
            $routes->get('listar/(:segment)', 'Usuario\ApiController::dbRead/$1');
            $routes->get('listar/(:any)', 'Usuario\ApiController::dbRead/$1');
            $routes->post('listar', 'Usuario\ApiController::dbRead');
            $routes->post('listar/(:any)', 'Usuario\ApiController::dbRead/$1');
            # www/index.php/sgcpro/usuario/api/filtrar/(:any)
            $routes->get('filtrar', 'Usuario\ApiController::dbFilter');
            $routes->get('filtrar/(:segment)', 'Usuario\ApiController::dbFilter/$1');
            $routes->get('filtrar/(:any)', 'Usuario\ApiController::dbFilter/$1');
            $routes->post('filtrar', 'Usuario\ApiController::dbFilter');
            $routes->post('filtrar/(:any)', 'Usuario\ApiController::dbFilter/$1');
            # www/index.php/sgcpro/usuario/api/deletar/(:any)
            // exit('src\app\Config\Routes.php');
            $routes->get('deletar', 'Usuario\ApiController::dbDelete');
            $routes->get('deletar/(:segment)', 'Usuario\ApiController::dbDelete/$1');
            $routes->get('deletar/(:any)', 'Usuario\ApiController::dbDelete/$1');
            $routes->post('deletar', 'Usuario\ApiController::dbDelete');
            $routes->post('deletar/(:any)', 'Usuario\ApiController::dbDelete/$1');
            # www/index.php/sgcpro/usuario/api/limpar/(:any)
            $routes->get('limpar', 'Usuario\ApiController::clear');
            $routes->get('limpar/(:segment)', 'Usuario\ApiController::clear/$1');
            $routes->get('limpar/(:any)', 'Usuario\ApiController::clear/$1');
            $routes->post('limpar', 'Usuario\ApiController::clear');
            $routes->post('limpar/(:any)', 'Usuario\ApiController::clear/$1');
            # www/index.php/sgcpro/usuario/api/teste/(:any)
            $routes->get('teste', 'Usuario\ApiController::testeUsuario');
            $routes->get('teste/(:segment)', 'Usuario\ApiController::testeUsuario/$1');
            $routes->get('teste/(:any)', 'Usuario\ApiController::testeUsuario/$1');
            $routes->post('teste', 'Usuario\ApiController::testeUsuario');
            $routes->post('teste/(:any)', 'Usuario\ApiController::testeUsuario/$1');
        });
        # www/index.php/sgcpro/usuario/endpoint/(:any)
        $routes->group('endpoint', function ($routes) {
            # www/index.php/sgcpro/usuario/endpoint/cadastrar/(:any)
            $routes->get('cadastrar', 'Usuario\EndpointController::dbCreate');
            $routes->get('cadastrar/(:segment)', 'Usuario\EndpointController::dbCreate/$1');
            $routes->get('cadastrar/(:any)', 'Usuario\EndpointController::dbCreate/$1');
            $routes->post('cadastrar', 'Usuario\EndpointController::dbCreate');
            $routes->post('cadastrar/(:any)', 'Usuario\EndpointController::dbCreate/$1');
            # www/index.php/sgcpro/usuario/endpoint/listar/(:any)
            $routes->get('listar', 'Usuario\EndpointController::dbRead');
            $routes->get('listar/(:segment)', 'Usuario\EndpointController::dbRead/$1');
            $routes->get('listar/(:any)', 'Usuario\EndpointController::dbRead/$1');
            $routes->post('listar', 'Usuario\EndpointController::dbRead');
            $routes->post('listar/(:any)', 'Usuario\EndpointController::dbRead/$1');
            # www/index.php/sgcpro/usuario/endpoint/atualizar/(:any)
            $routes->get('atualizar', 'Usuario\EndpointController::dbUpdate');
            $routes->get('atualizar/(:segment)', 'Usuario\EndpointController::dbUpdate/$1');
            $routes->get('atualizar/(:any)', 'Usuario\EndpointController::dbUpdate/$1');
            $routes->post('atualizar', 'Usuario\EndpointController::dbUpdate');
            $routes->post('atualizar/(:any)', 'Usuario\EndpointController::dbUpdate/$1');
            # www/index.php/sgcpro/usuario/endpoint/deletar/(:any)
            $routes->get('deletar', 'Usuario\EndpointController::dbDelete');
            $routes->get('deletar/(:segment)', 'Usuario\EndpointController::dbDelete/$1');
            $routes->get('deletar/(:any)', 'Usuario\EndpointController::dbDelete/$1');
            $routes->post('deletar', 'Usuario\EndpointController::dbDelete');
            $routes->post('deletar/(:any)', 'Usuario\EndpointController::dbDelete/$1');
        });
    });
    # www/index.php/sgcpro/velocidade/(:any)
    $routes->group('velocidade', function ($routes) {
        # www/index.php/sgcpro/velocidade/api/(:any)
        $routes->group('api', function ($routes) {
            # www/index.php/sgcpro/velocidade/api/salvar/(:any)
            $routes->get('salvar', 'Velocidade\ApiController::create_update');
            $routes->get('salvar/(:segment)', 'Velocidade\ApiController::create_update/$1');
            $routes->get('salvar/(:any)', 'Velocidade\ApiController::create_update/$1');
            $routes->post('salvar', 'Velocidade\ApiController::create_update');
            $routes->post('salvar/(:any)', 'Velocidade\ApiController::create_update/$1');
            # www/index.php/sgcpro/velocidade/api/listar/(:any)
            $routes->get('listar', 'Velocidade\ApiController::dbRead');
            $routes->get('listar/(:segment)', 'Velocidade\ApiController::dbRead/$1');
            $routes->get('listar/(:any)', 'Velocidade\ApiController::dbRead/$1');
            $routes->post('listar', 'Velocidade\ApiController::dbRead');
            $routes->post('listar/(:any)', 'Velocidade\ApiController::dbRead/$1');
            # www/index.php/sgcpro/velocidade/api/filtrar/(:any)
            $routes->get('filtrar', 'Velocidade\ApiController::dbFilter');
            $routes->get('filtrar/(:segment)', 'Velocidade\ApiController::dbFilter/$1');
            $routes->get('filtrar/(:any)', 'Velocidade\ApiController::dbFilter/$1');
            $routes->post('filtrar', 'Velocidade\ApiController::dbFilter');
            $routes->post('filtrar/(:any)', 'Velocidade\ApiController::dbFilter/$1');
            # www/index.php/sgcpro/velocidade/api/deletar/(:any)
            $routes->get('deletar', 'Velocidade\ApiController::dbDelete');
            $routes->get('deletar/(:segment)', 'Velocidade\ApiController::dbDelete/$1');
            $routes->get('deletar/(:any)', 'Velocidade\ApiController::dbDelete/$1');
            $routes->post('deletar', 'Velocidade\ApiController::dbDelete');
            $routes->post('deletar/(:any)', 'Velocidade\ApiController::dbDelete/$1');
            # www/index.php/sgcpro/velocidade/api/limpar/(:any)
            $routes->get('limpar', 'Velocidade\ApiController::clear');
            $routes->get('limpar/(:segment)', 'Velocidade\ApiController::clear/$1');
            $routes->get('limpar/(:any)', 'Velocidade\ApiController::clear/$1');
            $routes->post('limpar', 'Velocidade\ApiController::clear');
            $routes->post('limpar/(:any)', 'Velocidade\ApiController::clear/$1');
        });
        # www/index.php/sgcpro/velocidade/endpoint/(:any)
        $routes->group('endpoint', function ($routes) {
            # www/index.php/sgcpro/velocidade/endpoint/salvar/(:any)
            $routes->get('salvar', 'Velocidade\EndpointController::dbCreate');
            $routes->get('salvar/(:segment)', 'Velocidade\EndpointController::dbCreate/$1');
            $routes->get('salvar/(:any)', 'Velocidade\EndpointController::dbCreate/$1');
            $routes->post('salvar', 'Velocidade\EndpointController::dbCreate');
            $routes->post('salvar/(:any)', 'Velocidade\EndpointController::dbCreate/$1');
            # www/index.php/sgcpro/velocidade/endpoint/listar/(:any)
            $routes->get('listar', 'Velocidade\EndpointController::dbRead');
            $routes->get('listar/(:segment)', 'Velocidade\EndpointController::dbRead/$1');
            $routes->get('listar/(:any)', 'Velocidade\EndpointController::dbRead/$1');
            $routes->post('listar', 'Velocidade\EndpointController::dbRead');
            $routes->post('listar/(:any)', 'Velocidade\EndpointController::dbRead/$1');
            # www/index.php/sgcpro/velocidade/endpoint/deletar/(:any)
            $routes->get('deletar', 'Velocidade\EndpointController::dbDelete');
            $routes->get('deletar/(:segment)', 'Velocidade\EndpointController::dbDelete/$1');
            $routes->get('deletar/(:any)', 'Velocidade\EndpointController::dbDelete/$1');
            $routes->post('deletar', 'Velocidade\EndpointController::dbDelete');
            $routes->post('deletar/(:any)', 'Velocidade\EndpointController::dbDelete/$1');
        });
    });
    # www/index.php/sgcpro/contrato/(:any)
    $routes->group('contrato', function ($routes) {
        # www/index.php/sgcpro/contrato/api/(:any)
        $routes->group('api', function ($routes) {
            # www/index.php/sgcpro/contrato/api/salvar/(:any)
            $routes->get('salvar', 'Contrato\ApiController::create_update');
            $routes->get('salvar/(:segment)', 'Contrato\ApiController::create_update/$1');
            $routes->get('salvar/(:any)', 'Contrato\ApiController::create_update/$1');
            $routes->post('salvar', 'Contrato\ApiController::create_update');
            $routes->post('salvar/(:any)', 'Contrato\ApiController::create_update/$1');
            # www/index.php/sgcpro/contrato/api/listar/(:any)
            $routes->get('listar', 'Contrato\ApiController::dbRead');
            $routes->get('listar/(:segment)', 'Contrato\ApiController::dbRead/$1');
            $routes->get('listar/(:any)', 'Contrato\ApiController::dbRead/$1');
            $routes->post('listar', 'Contrato\ApiController::dbRead');
            $routes->post('listar/(:any)', 'Contrato\ApiController::dbRead/$1');
            # www/index.php/sgcpro/contrato/api/filtrar/(:any)
            $routes->get('filtrar', 'Contrato\ApiController::dbFilter');
            $routes->get('filtrar/(:segment)', 'Contrato\ApiController::dbFilter/$1');
            $routes->get('filtrar/(:any)', 'Contrato\ApiController::dbFilter/$1');
            $routes->post('filtrar', 'Contrato\ApiController::dbFilter');
            $routes->post('filtrar/(:any)', 'Contrato\ApiController::dbFilter/$1');
            # www/index.php/sgcpro/contrato/api/deletar/(:any)
            $routes->get('deletar', 'Contrato\ApiController::dbDelete');
            $routes->get('deletar/(:segment)', 'Contrato\ApiController::dbDelete/$1');
            $routes->get('deletar/(:any)', 'Contrato\ApiController::dbDelete/$1');
            $routes->post('deletar', 'Contrato\ApiController::dbDelete');
            $routes->post('deletar/(:any)', 'Contrato\ApiController::dbDelete/$1');
            # www/index.php/sgcpro/contrato/api/limpar/(:any)
            $routes->get('limpar', 'Contrato\ApiController::clear');
            $routes->get('limpar/(:segment)', 'Contrato\ApiController::clear/$1');
            $routes->get('limpar/(:any)', 'Contrato\ApiController::clear/$1');
            $routes->post('limpar', 'Contrato\ApiController::clear');
            $routes->post('limpar/(:any)', 'Contrato\ApiController::clear/$1');
        });
        # www/index.php/sgcpro/contrato/endpoint/(:any)
        $routes->group('endpoint', function ($routes) {
            # www/index.php/sgcpro/contrato/endpoint/cadastrar/(:any)
            $routes->get('cadastrar', 'Contrato\EndpointController::dbCreate');
            $routes->get('cadastrar/(:segment)', 'Contrato\EndpointController::dbCreate/$1');
            $routes->get('cadastrar/(:any)', 'Contrato\EndpointController::dbCreate/$1');
            $routes->post('cadastrar', 'Contrato\EndpointController::dbCreate');
            $routes->post('cadastrar/(:any)', 'Contrato\EndpointController::dbCreate/$1');
            # www/index.php/sgcpro/contrato/endpoint/listar/(:any)
            $routes->get('listar', 'Contrato\EndpointController::dbRead');
            $routes->get('listar/(:segment)', 'Contrato\EndpointController::dbRead/$1');
            $routes->get('listar/(:any)', 'Contrato\EndpointController::dbRead/$1');
            $routes->post('listar', 'Contrato\EndpointController::dbRead');
            $routes->post('listar/(:any)', 'Contrato\EndpointController::dbRead/$1');
            # www/index.php/sgcpro/contrato/endpoint/deletar/(:any)
            $routes->get('deletar', 'Contrato\EndpointController::dbDelete');
            $routes->get('deletar/(:segment)', 'Contrato\EndpointController::dbDelete/$1');
            $routes->get('deletar/(:any)', 'Contrato\EndpointController::dbDelete/$1');
            $routes->post('deletar', 'Contrato\EndpointController::dbDelete');
            $routes->post('deletar/(:any)', 'Contrato\EndpointController::dbDelete/$1');
        });
    });
    # www/index.php/sgcpro/cobranca/(:any)
    $routes->group('cobranca', function ($routes) {
        # www/index.php/sgcpro/cobranca/api/(:any)
        $routes->group('api', function ($routes) {
            # www/index.php/sgcpro/cobranca/api/cadastrar/(:any)
            $routes->get('salvar', 'Cobranca\ApiController::create_update');
            $routes->get('salvar/(:segment)', 'Cobranca\ApiController::create_update/$1');
            $routes->get('salvar/(:any)', 'Cobranca\ApiController::create_update/$1');
            $routes->post('salvar', 'Cobranca\ApiController::create_update');
            $routes->post('salvar/(:any)', 'Cobranca\ApiController::create_update/$1');
            # www/index.php/sgcpro/cobranca/api/listar/(:any)
            $routes->get('listar', 'Cobranca\ApiController::dbRead');
            $routes->get('listar/(:segment)', 'Cobranca\ApiController::dbRead/$1');
            $routes->get('listar/(:any)', 'Cobranca\ApiController::dbRead/$1');
            $routes->post('listar', 'Cobranca\ApiController::dbRead');
            $routes->post('listar/(:any)', 'Cobranca\ApiController::dbRead/$1');
            # www/index.php/sgcpro/cobranca/api/filtrar/(:any)
            $routes->get('filtrar', 'Cobranca\ApiController::dbFilter');
            $routes->get('filtrar/(:segment)', 'Cobranca\ApiController::dbFilter/$1');
            $routes->get('filtrar/(:any)', 'Cobranca\ApiController::dbFilter/$1');
            $routes->post('filtrar', 'Cobranca\ApiController::dbFilter');
            $routes->post('filtrar/(:any)', 'Cobranca\ApiController::dbFilter/$1');
            # www/index.php/sgcpro/cobranca/api/deletar/(:any)
            $routes->get('deletar', 'Cobranca\ApiController::dbDelete');
            $routes->get('deletar/(:segment)', 'Cobranca\ApiController::dbDelete/$1');
            $routes->get('deletar/(:any)', 'Cobranca\ApiController::dbDelete/$1');
            $routes->post('deletar', 'Cobranca\ApiController::dbDelete');
            $routes->post('deletar/(:any)', 'Cobranca\ApiController::dbDelete/$1');
            # www/index.php/sgcpro/cobranca/api/limpar/(:any)
            $routes->get('limpar', 'Cobranca\ApiController::clear');
            $routes->get('limpar/(:segment)', 'Cobranca\ApiController::clear/$1');
            $routes->get('limpar/(:any)', 'Cobranca\ApiController::clear/$1');
            $routes->post('limpar', 'Cobranca\ApiController::clear');
            $routes->post('limpar/(:any)', 'Cobranca\ApiController::clear/$1');
        });
        # www/index.php/sgcpro/cobranca/endpoint/(:any)
        $routes->group('endpoint', function ($routes) {
            # www/index.php/sgcpro/cobranca/endpoint/cadastrar/(:any)
            $routes->get('cadastrar', 'Cobranca\EndpointController::dbCreate');
            $routes->get('cadastrar/(:segment)', 'Cobranca\EndpointController::dbCreate/$1');
            $routes->get('cadastrar/(:any)', 'Cobranca\EndpointController::dbCreate/$1');
            $routes->post('cadastrar', 'Cobranca\EndpointController::dbCreate');
            $routes->post('cadastrar/(:any)', 'Cobranca\EndpointController::dbCreate/$1');
            # www/index.php/sgcpro/cobranca/endpoint/listar/(:any)
            $routes->get('listar', 'Cobranca\EndpointController::dbRead');
            $routes->get('listar/(:segment)', 'Cobranca\EndpointController::dbRead/$1');
            $routes->get('listar/(:any)', 'Cobranca\EndpointController::dbRead/$1');
            $routes->post('listar', 'Cobranca\EndpointController::dbRead');
            $routes->post('listar/(:any)', 'Cobranca\EndpointController::dbRead/$1');
            # www/index.php/sgcpro/cobranca/endpoint/atualizar/(:any)
            $routes->get('atualizar', 'Cobranca\EndpointController::dbUpdate');
            $routes->get('atualizar/(:segment)', 'Cobranca\EndpointController::dbUpdate/$1');
            $routes->get('atualizar/(:any)', 'Cobranca\EndpointController::dbUpdate/$1');
            $routes->post('atualizar', 'Cobranca\EndpointController::dbUpdate');
            $routes->post('atualizar/(:any)', 'Cobranca\EndpointController::dbUpdate/$1');
            # www/index.php/sgcpro/cobranca/endpoint/deletar/(:any)
            $routes->get('deletar', 'Cobranca\EndpointController::dbDelete');
            $routes->get('deletar/(:segment)', 'Cobranca\EndpointController::dbDelete/$1');
            $routes->get('deletar/(:any)', 'Cobranca\EndpointController::dbDelete/$1');
            $routes->post('deletar', 'Cobranca\EndpointController::dbDelete');
            $routes->post('deletar/(:any)', 'Cobranca\EndpointController::dbDelete/$1');
        });
    });
    # www/index.php/sgcpro/circuito/(:any)
    $routes->group('circuito', function ($routes) {
        # www/index.php/sgcpro/circuito/api/(:any)
        $routes->group('api', function ($routes) {
            # www/index.php/sgcpro/circuito/api/salvar/(:any)
            $routes->get('salvar', 'Circuito\ApiController::create_update');
            $routes->get('salvar/(:segment)', 'Circuito\ApiController::create_update/$1');
            $routes->get('salvar/(:any)', 'Circuito\ApiController::create_update/$1');
            $routes->post('salvar', 'Circuito\ApiController::create_update');
            $routes->post('salvar/(:any)', 'Circuito\ApiController::create_update/$1');
            # www/index.php/sgcpro/circuito/api/listar/(:any)
            $routes->get('listar', 'Circuito\ApiController::dbRead');
            $routes->get('listar/(:segment)', 'Circuito\ApiController::dbRead/$1');
            $routes->get('listar/(:any)', 'Circuito\ApiController::dbRead/$1');
            $routes->post('listar', 'Circuito\ApiController::dbRead');
            $routes->post('listar/(:any)', 'Circuito\ApiController::dbRead/$1');
            # www/index.php/sgcpro/circuito/api/filtrar/(:any)
            $routes->get('filtrar', 'Circuito\ApiController::dbFilter');
            $routes->get('filtrar/(:segment)', 'Circuito\ApiController::dbFilter/$1');
            $routes->get('filtrar/(:any)', 'Circuito\ApiController::dbFilter/$1');
            $routes->post('filtrar', 'Circuito\ApiController::dbFilter');
            $routes->post('filtrar/(:any)', 'Circuito\ApiController::dbFilter/$1');
            # www/index.php/sgcpro/circuito/api/deletar/(:any)
            $routes->get('deletar', 'Circuito\ApiController::dbDelete');
            $routes->get('deletar/(:segment)', 'Circuito\ApiController::dbDelete/$1');
            $routes->get('deletar/(:any)', 'Circuito\ApiController::dbDelete/$1');
            $routes->post('deletar', 'Circuito\ApiController::dbDelete');
            $routes->post('deletar/(:any)', 'Circuito\ApiController::dbDelete/$1');
            # www/index.php/sgcpro/circuito/api/limpar/(:any)
            $routes->get('limpar', 'Circuito\ApiController::clear');
            $routes->get('limpar/(:segment)', 'Circuito\ApiController::clear/$1');
            $routes->get('limpar/(:any)', 'Circuito\ApiController::clear/$1');
            $routes->post('limpar', 'Circuito\ApiController::clear');
            $routes->post('limpar/(:any)', 'Circuito\ApiController::clear/$1');
        });
        # www/index.php/sgcpro/circuito/endpoint/(:any)
        $routes->group('endpoint', function ($routes) {
            # www/index.php/sgcpro/circuito/endpoint/react/(:any)
            $routes->get('react', 'Circuito\EndpointController::react');
            $routes->get('react/(:segment)', 'Circuito\EndpointController::react/$1');
            $routes->get('react/(:any)', 'Circuito\EndpointController::react/$1');
            $routes->post('react', 'Circuito\EndpointController::react');
            $routes->post('react/(:any)', 'Circuito\EndpointController::react/$1');
            # www/index.php/sgcpro/circuito/endpoint/cadastrar/(:any)
            $routes->get('cadastrar', 'Circuito\EndpointController::dbCreate');
            $routes->get('cadastrar/(:segment)', 'Circuito\EndpointController::dbCreate/$1');
            $routes->get('cadastrar/(:any)', 'Circuito\EndpointController::dbCreate/$1');
            $routes->post('cadastrar', 'Circuito\EndpointController::dbCreate');
            $routes->post('cadastrar/(:any)', 'Circuito\EndpointController::dbCreate/$1');
            # www/index.php/sgcpro/circuito/endpoint/listar/(:any)
            $routes->get('listar', 'Circuito\EndpointController::dbRead');
            $routes->get('listar/(:segment)', 'Circuito\EndpointController::dbRead/$1');
            $routes->get('listar/(:any)', 'Circuito\EndpointController::dbRead/$1');
            $routes->post('listar', 'Circuito\EndpointController::dbRead');
            $routes->post('listar/(:any)', 'Circuito\EndpointController::dbRead/$1');
            # www/index.php/sgcpro/circuito/endpoint/deletar/(:any)
            $routes->get('deletar', 'Circuito\EndpointController::dbDelete');
            $routes->get('deletar/(:segment)', 'Circuito\EndpointController::dbDelete/$1');
            $routes->get('deletar/(:any)', 'Circuito\EndpointController::dbDelete/$1');
            $routes->post('deletar', 'Circuito\EndpointController::dbDelete');
            $routes->post('deletar/(:any)', 'Circuito\EndpointController::dbDelete/$1');
        });
    });
});
