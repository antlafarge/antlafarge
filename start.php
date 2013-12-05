<?php

//var_dump($_SERVER);
$arr = explode('/', $_SERVER['REQUEST_URI']);
$end = end($arr);
$arr = explode('.', $end);
$current_page = $arr[0];
//var_dump($current_page);

function treatActivePage($page, $current_page)
{
  if ( $page == $current_page )
  {
    echo ' class="active"';
  }
}

?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Antoine Lafarge dev book</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Le styles -->
    <link href="twitter-bootstrap/css/bootstrap.css" rel="stylesheet">
    <!--<link href="twitter-bootstrap/css/bootstrap-responsive.css" rel="stylesheet">-->
    <style>
		body { padding-top: 60px; /* 60px to make the container go all the way to the bottom of the topbar */ }
		.navbar .nav > .active > a,
		.navbar .nav > .active > a:hover,
		.navbar .nav > .active > a:focus { background-color:#bdf; }
    </style>

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="twitter-bootstrap/js/html5shiv.js"></script>
    <![endif]-->

    <!-- Fav and touch icons -->
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="twitter-bootstrap/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="twitter-bootstrap/ico/apple-touch-icon-114-precomposed.png">
      <link rel="apple-touch-icon-precomposed" sizes="72x72" href="twitter-bootstrap/ico/apple-touch-icon-72-precomposed.png">
                    <link rel="apple-touch-icon-precomposed" href="twitter-bootstrap/ico/apple-touch-icon-57-precomposed.png">
                                   <link rel="shortcut icon" href="twitter-bootstrap/ico/favicon.png">
  </head>

  <body>

    <div class="navbar navbar-fixed-top">
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
              <!--<li><a href="about">About</a></li>-->
              <!--<li <?php treatActivePage('contact', $current_page); ?>><a href="contact.php">Contact</a></li>-->
            </ul>
          </div><!--/.nav-collapse -->
        </div>
      </div>
    </div>

  <div class="container">

<style>
.thumbnail { display:table-cell; width:160px; height:105px; text-align:center; }
.thumbnail a { display:block; width:160px; height:105px; text-align:center; }
.thumbnail img { max-width:160px; height:90px; }
</style>
