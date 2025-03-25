<?php

namespace App\Filters;

use CodeIgniter\Filters\FilterInterface;
use CodeIgniter\HTTP\RequestInterface;
use CodeIgniter\HTTP\ResponseInterface;
use App\Controllers\Pattern\TokenCsrfController;

class AuthFilter implements FilterInterface
{
    private $tokenCsrf;
    protected $response;

    public function __construct()
    {
        $this->response = service('response');
        helper('cookie');
    }

    public function before(RequestInterface $request, $arguments = null)
    {
        $this->tokenCsrf = new TokenCsrfController();
        $getMethod = $request->getMethod();
        
        // 9 horas em segundos (9 * 60 * 60 = 32400)
        $expireTime = 32400;
        
        $gov_br = array(
            'nome' => 'Caio Marinho',
            'perfil' => 'Desenvolvedor',
            'email' => 'teste@rteste.com.br',
            'telefone' => '99999999999',
            'sigla' => 'PRODERJ',
            'orgao' => 'Centro de Tecnologia da Informação e Comunicação do Estado do Rio de Janeiro',
            'tratamento' => 'Exmo',
            'setor' => 'GERFS',
            'endereco' => 'Rua da Assembleia, 10 - 10º andar - Centro - Rio de Janeiro - RJ',
            'cep' => '20011-901',
            'cidade' => 'Rio de Janeiro',
            'estado' => 'RJ',
            'pais' => 'Brasil',
            'token_csrf' => $this->tokenCsrf->token_csrf(),
        );

        // 1) Verificar e criar sessão se necessário
        if (!session()->has('gov_br')) {
            
            $apiRespond = array(
                'name_session' => 'gov_br',
                'time_in_seconds' => $expireTime,
                'gov_br' => $gov_br,
            );
            
            session()->set($apiRespond['name_session'], $apiRespond);
            session()->markAsTempdata($apiRespond['name_session'], $apiRespond['time_in_seconds']);
        }
        
        // 2) Verificar e criar cookie se necessário
        if (get_cookie('gov_br_data') === null) {
            $varSession = session()->get('gov_br') ?: array();
            $montaJSON = $this->setApiRespond('success', $getMethod, $varSession);
            
            // Converter o array para uma string JSON
            $jsonData = json_encode($montaJSON);
            
            // Definir o cookie com o conteúdo JSON
            $cookieOptions = [
                'name' => 'gov_br_data',
                'value' => $jsonData,
                'expire' => $expireTime,
                'path' => '/',
                'domain' => '',
                'secure' => false,
                'httponly' => false,
                'samesite' => 'Lax'
            ];
            
            // Usar setcookie() da classe Response
            $this->response->setCookie($cookieOptions);
        }

        return $request;
    }

    public function after(RequestInterface $request, ResponseInterface $response, $arguments = null)
    {
        // A implementação do método after
        return $response;
    }

    private function setApiRespond(string $status = 'success', string $getMethod = 'GET', array $requestDb = array(), $message = 'API loading data (dados para carregamento da API)')
    {
        $service = \Config\Services::uri();

        # $message = 'API loading data (dados para carregamento da API)',
        $apiRespond = [
            'status' => $status,
            'message' => $message,
            'date' => date('Y-m-d'),
            'api' => [
                'version' => '1.0',
                'method' => $getMethod,
                'description' => 'API Description',
                'content_type' => 'application/x-www-form-urlencoded'
            ],
            'result' => $requestDb,
            'metadata' => [
                'page_title' => 'Application title',
                'getURI' => $service->getSegments(),
            ]
        ];

        return $apiRespond;
    }
}