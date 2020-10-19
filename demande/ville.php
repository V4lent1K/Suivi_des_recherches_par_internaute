<?php require('inc_connexion.php'); ?>

<?php
        
        session_start();

?>

<!DOCUTYPE html>

<html>
    
    <head>
                
        <?php
         
        $ville = $_GET['id'];
        
		$result = $mysqli->query('SELECT ville_id, ville_nom, ville_texte FROM villes WHERE ville_nom = "' . $ville . '"');
        $row = $result->fetch_array();
        
        $nom = $row['ville_nom'];
        $texte = $row['ville_texte'];
        
        $user_id = session_id();
        
        $mysqli->query('INSERT INTO user_searchs (user_search, user_session) VALUES ("'.$_SESSION['ville'].'", "'.$user_id.'") ');
                
        ?>

        <title><?php echo $nom ?></title>
        
    </head>
    
    <body>
        
        <h1>
            <?php echo $nom ?>
        </h1>
        
        <p>
            <?php echo $texte ?>
        </p>
        
    </body>
    
</html>

<?php require('inc_footer.php'); ?>