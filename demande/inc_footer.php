<?php
/*
fichier inclus : inc_footer.php
contient la fermeture de la connexion et la fin de page html
*/

// libération des résultats
$result->free();
//fermeture de la connexion
$mysqli->close();
?>
