<?php require('inc_connexion.php'); ?>

<!DOCUTYPE html>
    <html>

    <head>
        <?php
        
        if(isset($_POST['submit_form']))
        {
            $ville_nom = $_POST['recherche_ville'];
            if(empty($ville_nom))
            {
                $message = "<p>Vous devez saisir le nom d'une ville.</p>";
            }
            else
            {
                $result = $mysqli->query('SELECT count(ville_id) FROM villes WHERE ville_nom = "' . $ville_nom . '"');
                $row = $result->fetch_array();
                if($row[0]>0)
                {
                    $message = "<p>La ville est bien disponible sur le site.</p>";   
                }
                else 
                {
                    $message = "<p>La ville que vous rechercher n'est pas disponible sur le site internet. Merci de bien vouloir de changer de ville ou de vérifier votre ortographe.</p>";
                }
            }
        }
        
        session_start();
        $_SESSION['ville'] = $ville_nom;
        
        $user_id = session_id();
        
        $mysqli->query('INSERT INTO user_searchs (user_id, user_search) VALUES ("'.$user_id.'", "'.$_SESSION['ville'].'"');
        
        
        
            
        $result = $mysqli->query('SELECT user_session, user_search, user_id FROM user_searchs WHERE user_session ="' . $user_id . '"');
        $row = $result ->fetch_array();
        
        $ville_recherche = $row['user_search'];
        
        ?>

        <title>Suivi de recherche</title>

    </head>

    <body>

        <h1>Rechercher une ville</h1>

        <p>
            <?php echo $message ?>
            <a href="ville.php?id=<?php echo $ville_nom ?>"><?php echo $ville_nom ?></a>

        </p>

        <form method='post'>
            <input type='text' placeholder='recherche' name="recherche_ville" />
            <input type='submit' value="Rechercher" name="submit_form" />
        </form>

        <p>
        
            Votre dernière rechere à était : 
            <?php echo $ville_recherche ?>
            
        </p>
        
    </body>

</html>
