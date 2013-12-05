<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//FR" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<?php
// Cacher les Notices
error_reporting(E_ALL ^ E_NOTICE);

require_once ('./class/site.php');
require_once ('./class/database.php');
require_once ('./include/fonctions.php');

site::chargerStyle();
?>

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="fr">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="author" content="Antoine Lafarge" />
	<meta name="description" content="myCVwebsite" />
	<meta name="generator" content="Notepad++" />
	<meta name="keywords" content="" />
	<link rel="stylesheet" media="screen" type="text/css" title="Actuel" href="./style/<?php echo $_SESSION['style'] ?>.css" />
	<title><?php echo $_SERVER["HTTP_HOST"] ?></title>
</head>
<body>

<div id="global">
<div id="site">

<div id="banniere"></div>

<div id="menuHorizontal">
	<a href="./index.php5?page=presentation">Présentation</a>
	<a href="./index.php5?page=projets">Mes projets</a>
	<a href="./index.php5?page=contact">Contact</a>
</div>

<div id="corps">
	<div id="page">
		<?php site::inclurePage(); ?>
	</div>
</div>

<div id="pied">
	Antoine Lafarge - mon site web © - 
	Design : 
	<form id="design" method="get" action="././index.php5?url='.$_GET['url'].'">
		<p><input type="hidden" name="url" value="'.$_GET['url'].'" /></p>
		<?php list_select ('css', './style/', 'style') ?>
		<p><input type="submit" id="design_submit" value="ok" /></p>
	</form>
</div>

</div>
</div>

</body>
</html>
