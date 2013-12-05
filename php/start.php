<?php

$arr = explode('/', $_SERVER['REQUEST_URI']);
$end = end($arr);
$arr = explode('.', $end);
$current_page = $arr[0];

include_once('php/navbar.php');
include_once('php/ftp.php');

?>

<!DOCTYPE html>
<html>
  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

    <title>Antoine Lafarge dev book</title>

    <link href="bootstrap/css/bootstrap.css" rel="stylesheet">
	
	<link rel="icon" type="image/png" href="images/faviconbin.png" />

    <style>
    	body { background-image:url('images/fabric_of_squares_gray_@2X.png'); padding-top:64px; padding-bottom:32px; }

      .text-justified { text-align:justify; }

		.navbar-inverse .navbar-nav > .active > a, .navbar-inverse .navbar-nav > .active > a:hover, .navbar-inverse .navbar-nav > .active > a:focus {
			color: #111;
			background-color: #f9f9f9;
		}

	    .thumbnail { display:table-cell; width:160px; height:105px; text-align:center; }
	    .thumbnail a { display:block; width:160px; height:105px; text-align:center; }
	    .thumbnail img { max-width:160px; height:90px; }
    </style>

  </head>

  <body>

  <?php /*include_once("php/analyticstracking.php")*/ ?>

    <nav class="navbar navbar-fixed-top navbar-inverse" role="navigation">
      <!-- Brand and toggle get grouped for better mobile display -->
      <div class="navbar-header">
        <a class="navbar-brand" href=".">Antoine Lafarge dev book</a>
      </div>

      <!-- Collect the nav links, forms, and other content for toggling -->
      <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
        <ul class="nav navbar-nav">
          <li class="<?php treatActivePage('index', $current_page); ?> <?php treatActivePage('home', $current_page); ?>"><a href="index.php"><span class="glyphicon glyphicon-home"></span> Home</a></li>
          <li class="<?php treatActivePage('experiences', $current_page); ?>"><a href="experiences.php"><span class="glyphicon glyphicon-euro"></span> Expériences</a></li>
          <li class="<?php treatActivePage('projects', $current_page); ?>"><a href="projects.php"><span class="glyphicon glyphicon-time"></span> Projets</a></li>
        </ul>
      </div><!-- /.navbar-collapse -->
    </nav>

    <!--<div class="navbar navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container">
          <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="brand" href=".">Antoine Lafarge dev book</a>
          <div class="nav-collapse collapse">
            <ul class="nav">
              <li <?php treatActivePage('home', $current_page); ?>><a href="home.php">Home</a></li>
              <li <?php treatActivePage('experiences', $current_page); ?>><a href="experiences.php">Experiences</a></li>
              <li <?php treatActivePage('projects', $current_page); ?>><a href="projects.php">Projects</a></li>
            </ul>
          </div>
        </div>
      </div>
    </div>-->

  <div class="container">
