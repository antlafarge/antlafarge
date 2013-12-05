<?php
// Destination folder for downloaded files
$filepath = $_GET['filepath'];

// remove filename from the string
$tmp = explode('/', $filepath);
$filename = array_pop($tmp);
$dirpath = implode('/', $tmp);

if ( isset($_GET['unique']) && $_GET['unique'] )
{
	$filename = date('ymd-His').'-'.$filename;
	$filepath = $dirpath.'/'.$filename;
}

echo $filepath;

// If the browser supports sendAsBinary () can use the array $ _FILES
if(count($_FILES)>0)
{
	if( move_uploaded_file( $_FILES['upload']['tmp_name'] , $filepath ) )
	{
		echo 'done';
	}
	exit();
}
// If the browser does not support sendAsBinary ()
else if(isset($_GET['up']))
{
	if(isset($_GET['base64']))
	{
		$content = base64_decode(file_get_contents('php://input'));
	}
	else
	{
		$content = file_get_contents('php://input');
	}
	
	$op = opendir($dirpath);
	if ( $op )
	{
		closedir($op);
	}
	else
	{
		mkdir($dirpath);
	}
	
	unlink($filepath);
	
	$f = fopen($filepath, 'a+');
	fwrite($f, $content);
	fclose($f);
	
	exit();
}
?>
