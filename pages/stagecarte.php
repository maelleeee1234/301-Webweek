<?php 
include_once '../classes/database.php';
include_once '../classes/stage.php';
include_once '../classes/lieu.php';

//Faire appel à la classe database
$db = database::getInstance('aikido'); 

// Requete pour récupérer tout les stages et leurs infos
$stages = $db->getObjects("SELECT * FROM stage", 'Stage', []);
?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Stages</title>
</head>
<body>
    <main>
      <?php foreach ($stages as $unStage) : ?>
        <?php 
            // Récupérer le lieu associé à chacun des stages afficher (avec la classe lieu)
            $idLieu = $unStage->getIdLieu();
            //Recuperer les infos du lieu en fonction de l'id sur la BDD
            $resultatsLieu = $db->getObjects("SELECT * FROM lieu WHERE idLieu = " . $unStage->getIdLieu(), 'Lieu', []);
            $lieu = $resultatsLieu[0];
        ?>
        
        <!-- Lien pour rediriger vers le stage en détail en fonction de l'id-->
        <a href="articlestage.php?id=<?php echo $unStage->getId(); ?>">
            
        <!-- Afficher les stages--> 
            <div class="carte">
                <img src="<?php echo $unStage->getImage(); ?>" alt="Affiche du stage" />
                <h3><?php echo $unStage->getNom(); ?></h3>
                <p>Horaires : <?php echo $unStage->getHoraires(); ?></p> 
                <p>Tarif : <?php echo $unStage->getTarif(); ?> €</p>
                <p>Lieu : 
                    <?php echo $lieu->getNomLieu(); ?>, 
                    <?php echo $lieu->getVille(); ?>, 
                    <?php echo $lieu->getCodePostale(); ?>
                </p>
            </div>
        </a>
      <?php endforeach; ?>
    </main> 
</body>
</html>