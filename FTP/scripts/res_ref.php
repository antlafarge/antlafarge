<?php

if (!isset ($_GET['ratio_largeur']) AND !isset ($_GET['ratio_hauteur'])) {
	$ratio_largeur=4;
	$ratio_hauteur=3;
}

echo '
<h2>Résolutions de référence (pour une largeur entre 16 et 2048)</h2>

<hr />
<table>
	<form type="GET">
		<tr>
			<th colspan="2">Ratio</th>
		</tr>
		<tr>
			<td><input type="radio" name="type" value="auto" checked="checked" /> Auto</td>
			<td>
				<select name="ratio">
					<option value="1" selected="selected">16/9 (1,7778)</option>
					<option value="2">4/3 (1,3333)</option>
					<option value="3">16/10 (1,6000)</option>
					<option value="4">5/4 (1,2500)</option>
					<option value="5">21/9 (2,3333)</option>
				</select>
			</td>
		</tr>
		<tr>
			<td><input type="radio" name="type" value="manuel" /> Manuel</td>
			<td>
				<input type="text" name="ratio_largeur" size="1" value="'.$ratio_largeur.'" />
				:
				<input type="text" name="ratio_hauteur" size="1" value="'.$ratio_hauteur.'" />
			</td>
		</tr>
		<tr>
			<th colspan="2">Options</th>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="submit" value="OK" />
			</td>
		</tr>
	</form>
</table>
<hr />
';

if (isset ($_GET['ratio_largeur'])) {
	if ($_GET['type'] == 'auto') {
		if ($_GET['ratio'] == 1) {
			$ratio_largeur = 16;
			$ratio_hauteur = 9;
		}
		if ($_GET['ratio'] == 2) {
			$ratio_largeur = 4;
			$ratio_hauteur = 3;
		}
		if ($_GET['ratio'] == 3) {
			$ratio_largeur = 16;
			$ratio_hauteur = 10;
		}
		if ($_GET['ratio'] == 4) {
			$ratio_largeur = 5;
			$ratio_hauteur = 4;
		}
		if ($_GET['ratio'] == 5) {
			$ratio_largeur = 21;
			$ratio_hauteur = 9;
		}
	}
	else {
		$ratio_largeur = $_GET['ratio_largeur'];
		if (!$ratio_largeur)
			$ratio_largeur = 16;
		$ratio_hauteur = $_GET['ratio_hauteur'];
		if (!$ratio_hauteur)
			$ratio_hauteur = 9;
	}

	echo '<h2>Ratio : '.$ratio_largeur.'/'.$ratio_hauteur.'</h2>';

	$i=0;
	$perfect=16;

	echo '<table><tr><th>largeur</th><th>hauteur</th></tr>';
	
	for ($i=16 ; $i<=2048 ; $i+=$perfect) {
		$j = $i * $ratio_hauteur / $ratio_largeur;
		if (!($j % $perfect))
			echo '<tr><td>'.$i.'</td><td>'.$j.'</td></tr>';
	}
	
	echo '</table>';
}

echo '<hr />';

?>