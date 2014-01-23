<?php

function getVoyelle()
{
	$rand = rand(0,5);
	switch($rand)
	{
		case 0:
			$randChar = 'a';
			break;
		case 1:
			$randChar = 'e';
			break;
		case 2:
			$randChar = 'i';
			break;
		case 3:
			$randChar = 'o';
			break;
		case 4:
			$randChar = 'u';
			break;
		case 5:
			$randChar = 'y';
			break;
	}
	return $randChar;
}

function getConsonne()
{
	$rand = rand(0,5);
	switch($rand)
	{
		case 0:
			$randChar = 'b';
			break;
		case 1:
			$randChar = 'c';
			break;
		case 2:
			$randChar = 'd';
			break;
		case 3:
			$randChar = 'f';
			break;
		case 4:
			$randChar = 'g';
			break;
		case 5:
			$randChar = 'h';
			break;
		case 6:
			$randChar = 'j';
			break;
		case 7:
			$randChar = 'k';
			break;
		case 8:
			$randChar = 'l';
			break;
		case 9:
			$randChar = 'm';
			break;
		case 10:
			$randChar = 'n';
			break;
		case 11:
			$randChar = 'p';
			break;
		case 12:
			$randChar = 'q';
			break;
		case 13:
			$randChar = 'r';
			break;
		case 14:
			$randChar = 's';
			break;
		case 15:
			$randChar = 't';
			break;
		case 16:
			$randChar = 'v';
			break;
		case 17:
			$randChar = 'w';
			break;
		case 18:
			$randChar = 'x';
			break;
		case 19:
			$randChar = 'z';
			break;
	}
	return $randChar;
}

function genererPrenom($longueur)
{
	if ($longueur > 0 AND $longueur < 1024)
	{
		$randName = "";
		for ($i=0 ; $i<$longueur ; $i++)
		{
			if ( $i % 2 )
				$randName .= getVoyelle();
			else
				$randName .= getConsonne();
		}
	}
	return $randName;
}

echo '<h2>Generation de prenoms</h2>';

echo genererPrenom(4).'<br />';
echo genererPrenom(4).'<br />';
echo genererPrenom(5).'<br />';
echo genererPrenom(5).'<br />';
echo genererPrenom(6).'<br />';
echo genererPrenom(6).'<br />';
echo genererPrenom(7).'<br />';
echo genererPrenom(7).'<br />';
echo genererPrenom(8).'<br />';
echo genererPrenom(8).'<br />';
echo genererPrenom(9).'<br />';
echo genererPrenom(9).'<br />';
echo genererPrenom(10).'<br />';
echo genererPrenom(10).'<br />';
echo genererPrenom(11).'<br />';
echo genererPrenom(11).'<br />';
echo genererPrenom(12).'<br />';
echo genererPrenom(12).'<br />';
echo genererPrenom(13).'<br />';
echo genererPrenom(13).'<br />';
echo genererPrenom(14).'<br />';
echo genererPrenom(14).'<br />';
echo genererPrenom(15).'<br />';
echo genererPrenom(15).'<br />';
echo genererPrenom(16).'<br />';
echo genererPrenom(16).'<br />';
?>