<?php

class site
{
	// Fonction principale du site vérifiant la page a inclure et l'incluant si elle est correcte
	public static function chargerStyle ()
	{
		// CHANGEMENT DU STYLE
		if ( isset($_GET['style']) AND !empty($_GET['style']) ) // Si un changement de style doit etre effectué
		{
			setcookie ('style', $_GET['style'], time()+365*3600);
			$_SESSION['style'] = $_GET['style'];
		}
		elseif ( !isset($_SESSION['style']) AND isset($_COOKIE['style']) AND !empty ($_COOKIE['style']) ) // Si un cookie de changement de style est trouvé
			$_SESSION['style'] = $_COOKIE['style'];
		else//if ( !isset($_SESSION['style']) ) // Style par défaut
			$_SESSION['style'] = 'default';
	}
	
	// Fonction principale du site vérifiant la page a inclure et l'incluant si elle est correcte
	public static function inclurePage()
	{
		if (isset ($_GET['page']))
		{
			$page = /*mysql_real_escape_string*/ (trim ($_GET['page']));
			if (file_exists ('./page/'.$page.'.php') AND !strpos  ($page, ".."))
				include ('./page/'.$page.'.php');
			else
				$defaut = true;
		}
		else
			$defaut = true;
		
		if ($defaut)
			include ('./page/presentation.php');
	}

	// affiche un message de debug, avec la trace d'exécution
	public static function debug($message)
	{
		if (DEBUG == true)
		{
			echo "<pre class='debug'>";
			
			echo "<b>";
			print_r($message);
			echo "</b>\n";
			
			echo self::trace(debug_backtrace());
			
			echo "</pre>";
		}
		else
			return;
	}
}

?>
