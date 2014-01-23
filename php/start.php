<?php

$arr = explode('/', $_SERVER['REQUEST_URI']);
$end = end($arr);
$arr = explode('.', $end);
$current_page = $arr[0];

include_once('php/navbar.php');

?>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Antoine Lafarge dev book</title>
<link href="bootstrap-3.0.3/css/bootstrap.css" rel="stylesheet">
<link rel="icon" type="image/png" href="images/faviconbin.png" />
<style>
	body { background-image:url('images/fabric_of_squares_gray_@2X.png'); padding-top:20px; padding-bottom:20px; }
	.text-justified { text-align:justify; }
	.panel img { height:90px; }
</style>
</head>
<body>

<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
	<div class="container">
		<div class="navbar-header">
			<a class="navbar-brand" href=".">Antoine Lafarge dev book</a>
		</div>
		<p class="navbar-text navbar-right">Développeur passionné</p>
	</div>
</nav>
