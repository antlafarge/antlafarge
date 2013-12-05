<?php
function genererMdp($longueur)
{
	if ($longueur > 0 AND $longueur < 1024)
	{
		$randPass = "";
		for ($i=0 ; $i<$longueur ; $i++)
		{
			$randType = rand(0,2);
			switch($randType)
			{
				case 0:
					$randChar = rand(48,57);
					break;
				case 1:
					$randChar = rand(65,90);
					break;
				case 2:
					$randChar = rand(97,122);
					break;
			}
			$randPass .= chr($randChar);
		}
	}
	return $randPass;
}

echo '<h2>Generation de mots de passe</h2>';

echo '<h3>8 caracteres</h3>';
echo genererMdp(8).'<br />';
echo genererMdp(8).'<br />';
echo genererMdp(8).'<br />';
echo genererMdp(8).'<br />';
echo genererMdp(8).'<br />';
echo genererMdp(8).'<br />';
echo genererMdp(8).'<br />';
echo genererMdp(8).'<br />';

echo '<h3>16 caracteres</h3>';
echo genererMdp(16).'<br />';
echo genererMdp(16).'<br />';
echo genererMdp(16).'<br />';
echo genererMdp(16).'<br />';
echo genererMdp(16).'<br />';
echo genererMdp(16).'<br />';
echo genererMdp(16).'<br />';
echo genererMdp(16).'<br />';

echo '<h3>32 caracteres</h3>';
echo genererMdp(32).'<br />';
echo genererMdp(32).'<br />';
echo genererMdp(32).'<br />';
echo genererMdp(32).'<br />';
echo genererMdp(32).'<br />';
echo genererMdp(32).'<br />';
echo genererMdp(32).'<br />';
echo genererMdp(32).'<br />';

echo '<h3>64 caracteres</h3>';
echo genererMdp(64).'<br />';
echo genererMdp(64).'<br />';
echo genererMdp(64).'<br />';
echo genererMdp(64).'<br />';
echo genererMdp(64).'<br />';
echo genererMdp(64).'<br />';
echo genererMdp(64).'<br />';
echo genererMdp(64).'<br />';
?>