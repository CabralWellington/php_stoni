<?php

/** O nome do banco de dados */
define('DB_NAME', 'stoni');

/** Usuário do banco de dados MySQL */
define('DB_USER', 'root');

/** Senha do banco de dados MySQL */
define('DB_PASSWORD', 'wellington');

/** nome do host do MySQL */
define('DB_HOST', '127.0.0.1');

/** caminho absoluto para a pasta do sistema * */
if (!defined('ABSPATH')) {
    define('ABSPATH', dirname(__FILE__) . '/');
}

/** caminho no server para o sistema * */
if (!defined('BASEURL')) {
    define('BASEURL', '/');
}

/** caminho do arquivo de banco de dados * */
if (!defined('DBAPI')) {
    define('DBAPI', ABSPATH . 'database.php');
}

/** caminhos dos templates de header e footer **/
define('HEADER_TEMPLATE', ABSPATH . 'header.php');
define('FOOTER_TEMPLATE', ABSPATH . 'footer.php');