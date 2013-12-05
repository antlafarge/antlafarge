<?php

echo '<h3>Contact</h3>';

if (isset($_POST['message']) && isset($_POST['objet']) && isset($_POST['expediteur']) && !empty($_POST['message']) && !empty($_POST['objet']) && !empty($_POST['expediteur']))
{
	$objet = 'monSiteWeb: '.$_POST['objet'];
	$message = $_POST['message']."\r\nExpéditeur: ".$_POST['expediteur'];
	mail( "ant.lafarge@gmail.com" , $objet , $message );
	echo '<div class="info">Message envoyé</div>';
}
else
{
	echo '
	<form method="post">
		<table>
		<tr>
			<td>Votre email</td>
			<td><input type="text" name="expediteur" /></td>
		</tr>
		<tr>
			<td>Objet</td>
			<td><input type="text" name="objet" /></td>
		</tr>
		<tr>
			<td>Message</td>
			<td><textarea name="message" rows="20" cols="100"></textarea></td>
		</tr>
		<tr>
			<td colspan="2"><input type="submit" /></td>
		</tr>
		</table>
	</form>
	';
}

?>