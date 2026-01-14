<?php 
include_once '../classes/database.php';
include_once '../classes/stage.php';
include_once '../classes/lieu.php';

$stageChoisi = null;

//Verifier si il y a un id et le récupérer
if(isset($_GET['id'])){
      $idStage= $_GET['id'];
    //Faire appel à la classe database
    $db = database::getInstance('aikido'); 

    // Requete pour récupérer le stage 
    $stageChoisi = "SELECT * FROM stage WHERE idStage = $idStage";
    //get Objects
    $resultatsStage = $db->getObjects($stageChoisi, 'Stage', []);
    //Recuperer le resultat
    $stageChoisi = $resultatsStage[0];

    //Recuperer l'id du lieu par rapport à l'id du stage
    $id = $stageChoisi->getIdLieu();
    //Recuperer les infos du lieu dans la BDD
    $lieuStage = "SELECT * FROM lieu WHERE idLieu = " . $id;
    //getObjects
    $resultatsLieu = $db->getObjects($lieuStage, 'Lieu', []); 
    //Recuperer le resultat
    $lieuAssocie = $resultatsLieu[0];
}
?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Stage</title>
</head>
<body>
    <main>
        <div>
            <img src="<?php echo $stageChoisi->getImage(); ?>" alt="Affiche du stage" style="width:200px;"/>
            <h1><?php echo $stageChoisi->getNom(); ?></h1>
            <?php if ($stageChoisi->getDateDebut()===$stageChoisi->getDateFin()) {?>
                <p><strong>Date :</strong>
                    Le <?php echo $stageChoisi->getDateDebut();
                } 
                else { ?>
                    <p><strong>Dates :</strong>
                    Du <?php echo $stageChoisi->getDateDebut(); ?> au <?php echo $stageChoisi->getDateFin(); 
                }?>
                </p>

                <p><strong>Horaires :</strong> <?php echo $stageChoisi->getHoraires(); ?></p>
                <p><strong>Tarif :</strong> <?php echo $stageChoisi->getTarif(); ?> €</p>

                <p><strong>Lieu : </strong>
                    <?php echo $lieuAssocie->getNomLieu(); ?>, 
                    <?php echo $lieuAssocie->getVille(); ?>, 
                    <?php echo $lieuAssocie->getCodePostale(); ?>
                </p>
    </main>
    
</body>
</html>