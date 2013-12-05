<?php include_once('php/start.php'); ?>

<h1>Contact</h1>

<?php

if (isset($_POST['message']) && isset($_POST['objet']) && isset($_POST['expediteur']) && !empty($_POST['message']) && !empty($_POST['objet']) && !empty($_POST['expediteur']))
{
	$objet = 'monSiteWeb: '.$_POST['objet'];
	$message = $_POST['message']."\r\nExpéditeur: ".$_POST['expediteur'];
	mail( 'ant.lafarge@gmail.com' , $objet , $message );
	echo '<div class="info">Message envoyé</div>';
}
else
{
	echo '
    <p>

	<form method="post">
		<table>
		<tr>
			<td>Email sender&nbsp;&nbsp;</td>
			<td><input type="text" name="expediteur" style="width:400px;"></td>
		</tr>
		<tr>
			<td>Title</td>
			<td><input type="text" name="objet" style="width:400px;"></td>
		</tr>
		<tr>
			<td>Message</td>
			<td><textarea name="message" style="width:400px;height:200px;"></textarea></td>
		</tr>
		<tr>
			<td colspan="2" style="text-align:right;"><input type="submit" value="Send"></td>
		</tr>
		</table>
	</form>

	</p>
	';
}

?>

<?php include_once('php/end.php'); ?>
