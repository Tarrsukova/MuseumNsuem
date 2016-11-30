<?php
/**
 * Основные параметры WordPress.
 *
 * Скрипт для создания wp-config.php использует этот файл в процессе
 * установки. Необязательно использовать веб-интерфейс, можно
 * скопировать файл в "wp-config.php" и заполнить значения вручную.
 *
 * Этот файл содержит следующие параметры:
 *
 * * Настройки MySQL
 * * Секретные ключи
 * * Префикс таблиц базы данных
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** Параметры MySQL: Эту информацию можно получить у вашего хостинг-провайдера ** //
/** Имя базы данных для WordPress */
define('DB_NAME', 'museum');

/** Имя пользователя MySQL */
define('DB_USER', 'root');

/** Пароль к базе данных MySQL */
define('DB_PASSWORD', '');

/** Имя сервера MySQL */
define('DB_HOST', 'localhost');

/** Кодировка базы данных для создания таблиц. */
define('DB_CHARSET', 'utf8');

/** Схема сопоставления. Не меняйте, если не уверены. */
define('DB_COLLATE', '');

/**#@+
 * Уникальные ключи и соли для аутентификации.
 *
 * Смените значение каждой константы на уникальную фразу.
 * Можно сгенерировать их с помощью {@link https://api.wordpress.org/secret-key/1.1/salt/ сервиса ключей на WordPress.org}
 * Можно изменить их, чтобы сделать существующие файлы cookies недействительными. Пользователям потребуется авторизоваться снова.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'T5P:;(9 K,C4Gx3.4>nN7OGX#0)B%qK;Vlhx %.SrF{b(>SAU@aE9plmZ|cJ|:sp');
define('SECURE_AUTH_KEY',  '}mKOD7)ssJXHwM/83G[AIQ(!l#e*<sLGmtGij^%dH)Xl3pzP?`_w$xOy~ nHQF-n');
define('LOGGED_IN_KEY',    '/`0CmzgNt|8Xb@LDrJWl&*1Lt$U:{sJot/N={&RG<f3n~`^S6~@UBP($` :m7#D^');
define('NONCE_KEY',        'V}-_mVA=%dsa5Rvh>#E|CDM65M|nOnhaM6Y8-K`7Mt?4vn|ft%Ngu4?(r})D$51H');
define('AUTH_SALT',        '?D.IOQa_Id`F~pw`M{EJ=.0OUi7lF67|q1L4?t=)7:wXWyH4eb]TN^Kj:%kk.O~z');
define('SECURE_AUTH_SALT', 'pZ&;Tmje#Q#]yEvu(sd+y88#hA{p-|` MFq?k%1a4ZWw#%@OUS@o8bP`l%Wv*|S ');
define('LOGGED_IN_SALT',   'Jc+{w>)P?Ip1@y,(^rdg[8Nd5`:V`Jv?2Vpy8&r#}om/mx&&OZ75Twc6Q-iu}$pI');
define('NONCE_SALT',       'L6aPh~96/?n&zec+w[elL!Jbh|cSKIx><ddK(VwZlqV4jKTU7b)Ulk8sxQgSC;g&');

/**#@-*/

/**
 * Префикс таблиц в базе данных WordPress.
 *
 * Можно установить несколько сайтов в одну базу данных, если использовать
 * разные префиксы. Пожалуйста, указывайте только цифры, буквы и знак подчеркивания.
 */
$table_prefix  = 'wp_';

/**
 * Для разработчиков: Режим отладки WordPress.
 *
 * Измените это значение на true, чтобы включить отображение уведомлений при разработке.
 * Разработчикам плагинов и тем настоятельно рекомендуется использовать WP_DEBUG
 * в своём рабочем окружении.
 * 
 * Информацию о других отладочных константах можно найти в Кодексе.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* Это всё, дальше не редактируем. Успехов! */

/** Абсолютный путь к директории WordPress. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Инициализирует переменные WordPress и подключает файлы. */
require_once(ABSPATH . 'wp-settings.php');
