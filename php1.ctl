#TITLE=PHP����
#SORT=y

#T=$_SERVER['HTTP_REFERER']
$_SERVER['HTTP_REFERER']
#T=$_SERVER['REQUEST_METHOD']
$_SERVER['REQUEST_METHOD']
#T=authenticate������֤
define('ADMIN_USERNAME','apc');
define('ADMIN_PASSWORD','123');

if ($_SERVER['PHP_AUTH_USER'] != ADMIN_USERNAME || $_SERVER['PHP_AUTH_PW'] != ADMIN_PASSWORD) {
	Header('WWW-Authenticate: Basic realm="User Login"');
	Header("HTTP/1.0 401 Unauthorized");
	echo '<h1>401 Unauthorized</h1>';
	exit;
}

#T=debug_backtrace����������λ��
print_r(debug_backtrace());
#T=debug_backtrace��
function removeBacktraceArg($a){
	foreach($a as $k=>$v){
		if($k=='args' || $k=='object') unset($a[$k]);
	}
	return $a;
}

printr(array_map('removeBacktraceArg', debug_backtrace()));
#T=extract($row,EXTR_PREFIX_ALL,'r');
extract($row, EXTR_PREFIX_ALL, 'r');
#T=get_declared_classesȫ������
print_r(get_declared_classes());
#T=get_defined_constants�����Զ��峣��
$gdconstants = get_defined_constants(true);
print_r($gdconstants['user']);
#T=get_defined_functions�����Զ��庯��
$gdfunctions = get_defined_functions();
print_r($gdfunctions['user']);
#T=get_defined_vars()���б���
print_r(get_defined_vars());
#T=get_included_files���������ļ�
print_r(get_included_files());
#T=mysql�ض����׷�ٲ�ѯ
if(strpos($sql, 'seller_name')!==false) {
    printr(array_map('removeBacktraceArg', debug_backtrace()));die();
}
#T=php��htmlע��
echo "\n\r<!--  ";
^!

echo " -->";
#T=session_write_close();
session_write_close();
#T=substr-strstr-strpos
$host = "www.120.com";

echo strstr($host, "."),'<br />';
echo substr(strstr($host, "."), 1),'<br />';
echo substr($host, strpos($host, '.')),'<br />';

#T=xdebug_get_function_stack
print_r(xdebug_get_function_stack());
#T=xdebug_print_function_stack
xdebug_print_function_stack( '----' );
#T=���insert
insert into tg_files(tg_id,tf_path) values(2,'docs/fdsafdsfds.doc'),(2,'fdsafdsf')
#T=��ֹվ���ύ��
if(strpos($_SERVER['HTTP_REFERER'],$_SERVER['HTTP_HOST'])===false) exit();//��ֹվ���ύ��

#T=��������Ϣ
<?php

echo date('Y-m-d H:i:s',time()),'<br />';
echo __FILE__,'<br />';
echo dirname(__FILE__),'<br />';
echo DIRECTORY_SEPARATOR,'<br />';

define('DOCROOT', dirname(__FILE__).'/');
define('WEBROOT', 'http://'.$_SERVER["HTTP_HOST"].'/');
echo DOCROOT,'<br />';
echo WEBROOT,'<br />';

function query($sql){
$r = mysql_query($sql) or die(mysql_error());
return $r;
}

function DB($db='hyzs'){
$link = mysql_connect('localhost','root','123') or die(mysql_error());
mysql_select_db($db) or die(mysql_error());
mysql_set_charset('utf8');
return $link;
}

$link=DB();


?>

<pre>
<?php
print_r($_SERVER);
?>
</pre>
<hr />

<?php
phpinfo();
?>


#T=ȡ�ú��������λ��
echo new \ReflectionFunction('PutCookie');
#T=ȡ����ķ�����λ��
$class = new \ReflectionClass(get_class($this));
echo $class->getMethod('set');
#T=ȡ�����λ�ú�����ReflectionClass
echo new \ReflectionClass('Cache');
#T=ȡ�����λ�ú�����-�����ȡ
echo new \ReflectionClass(get_class($this));
#T=�����־�ļ�
file_put_contents("/sql2.txt", $str."\n\r", FILE_APPEND);
#T=�����־�ļ�-���ƴ�С
$log_txt = "/0log.txt";

file_put_contents($log_txt, $sql. "\n\r", FILE_APPEND);

if(filesize($log_txt)>512000) {
	unlink($log_txt);
}
#