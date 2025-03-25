<?php

/*
 | --------------------------------------------------------------------
 | App Namespace
 | --------------------------------------------------------------------
 |
 | This defines the default Namespace that is used throughout
 | CodeIgniter to refer to the Application directory. Change
 | this constant to change the namespace that all application
 | classes should use.
 |
 | NOTE: changing this will require manually modifying the
 | existing namespaces of App\* namespaced-classes.
 */
defined('APP_NAMESPACE') || define('APP_NAMESPACE', 'App');

defined('DC600510874629856C25BFEDFF722F19') || define('DC600510874629856C25BFEDFF722F19', 'mysql80'); // hostname
defined('C9B0168F1C8887547248076C394EF2C6') || define('C9B0168F1C8887547248076C394EF2C6', 'root'); // username
defined('D9BF3487A4CAF5CCDD9F838D3326B736') || define('D9BF3487A4CAF5CCDD9F838D3326B736', 'pass123'); // password
defined('C7D3CCB0B6BD948158FC425B3EEF9BDA') || define('C7D3CCB0B6BD948158FC425B3EEF9BDA', 'circuito'); // database
defined('C15CF767E538F9AB5CD3E11B18238376') || define('C15CF767E538F9AB5CD3E11B18238376', 'MySQLi'); // DBDriver

defined('BCB125AFD14ED8667D8182173E060E8D') || define('BCB125AFD14ED8667D8182173E060E8D', '10.11.63.137');// hostname
defined('EE9E509FC3B882504BB9EAEEEA7135A4') || define('EE9E509FC3B882504BB9EAEEEA7135A4', 'SGC');// username
defined('B294F1AE9C2A3F55F2F6347FF1A32CDD') || define('B294F1AE9C2A3F55F2F6347FF1A32CDD', '2f2ys7yMbeOMvpFiO$');// password
defined('C478471FE579C15A5B08A827FB548CF6') || define('C478471FE579C15A5B08A827FB548CF6', 'SGC');// database
defined('BD0F0116CE58193B87980044F777FD46') || define('BD0F0116CE58193B87980044F777FD46', 'MySQLi');// DBDriver


$sereverName = isset($_SERVER['SERVER_NAME']) ? ($_SERVER['SERVER_NAME']) : ('localhost');
$port = isset($_SERVER['SERVER_PORT']) ? ($_SERVER['SERVER_PORT']) : ('8080');
/*
 | --------------------------------------------------------------------------
 | Composer Path
 | --------------------------------------------------------------------------
 |
 | The path that Composer's autoload file is expected to live. By default,
 | the vendor folder is in the Root directory, but you can customize that here.
 */
defined('COMPOSER_PATH') || define('COMPOSER_PATH', ROOTPATH . 'vendor/autoload.php');

if (
    $sereverName == 'localhost'
    || $sereverName == '127.0.0.1'
    || $sereverName == '10.146.84.140'
) {
    # Ambiente DEV
    defined('DEBUG_MY_PRINT') or define('DEBUG_MY_PRINT', true);
} else {
    defined('DEBUG_MY_PRINT') or define('DEBUG_MY_PRINT', false);
}
/*
 |--------------------------------------------------------------------------
 | Timing Constants
 |--------------------------------------------------------------------------
 |
 | Provide simple ways to work with the myriad of PHP functions that
 | require information to be in seconds.
 */
defined('SECOND') || define('SECOND', 1);
defined('MINUTE') || define('MINUTE', 60);
defined('HOUR') || define('HOUR', 3600);
defined('DAY') || define('DAY', 86400);
defined('WEEK') || define('WEEK', 604800);
defined('MONTH') || define('MONTH', 2_592_000);
defined('YEAR') || define('YEAR', 31_536_000);
defined('DECADE') || define('DECADE', 315_360_000);

if (
    $port === '80' &&
    $sereverName === 'localhost' ||
    $port === '59000' &&
    $sereverName === '127.0.0.1'
) {
    defined('GRUPO_DB_CONFIG') || define('GRUPO_DB_CONFIG', 'dbHml');
} else {
    exit('src\app\Config\Constants.php - ERRO: Conexão de Banco não informada');
}
/*
 | --------------------------------------------------------------------------
 | Exit Status Codes
 | --------------------------------------------------------------------------
 |
 | Used to indicate the conditions under which the script is exit()ing.
 | While there is no universal standard for error codes, there are some
 | broad conventions.  Three such conventions are mentioned below, for
 | those who wish to make use of them.  The CodeIgniter defaults were
 | chosen for the least overlap with these conventions, while still
 | leaving room for others to be defined in future versions and user
 | applications.
 |
 | The three main conventions used for determining exit status codes
 | are as follows:
 |
 |    Standard C/C++ Library (stdlibc):
 |       http://www.gnu.org/software/libc/manual/html_node/Exit-Status.html
 |       (This link also contains other GNU-specific conventions)
 |    BSD sysexits.h:
 |       http://www.gsp.com/cgi-bin/man.cgi?section=3&topic=sysexits
 |    Bash scripting:
 |       http://tldp.org/LDP/abs/html/exitcodes.html
 |
 */
defined('EXIT_SUCCESS') || define('EXIT_SUCCESS', 0);        // no errors
defined('EXIT_ERROR') || define('EXIT_ERROR', 1);          // generic error
defined('EXIT_CONFIG') || define('EXIT_CONFIG', 3);         // configuration error
defined('EXIT_UNKNOWN_FILE') || define('EXIT_UNKNOWN_FILE', 4);   // file not found
defined('EXIT_UNKNOWN_CLASS') || define('EXIT_UNKNOWN_CLASS', 5);  // unknown class
defined('EXIT_UNKNOWN_METHOD') || define('EXIT_UNKNOWN_METHOD', 6); // unknown class member
defined('EXIT_USER_INPUT') || define('EXIT_USER_INPUT', 7);     // invalid user input
defined('EXIT_DATABASE') || define('EXIT_DATABASE', 8);       // database error
defined('EXIT__AUTO_MIN') || define('EXIT__AUTO_MIN', 9);      // lowest automatically-assigned error code
defined('EXIT__AUTO_MAX') || define('EXIT__AUTO_MAX', 125);    // highest automatically-assigned error code
