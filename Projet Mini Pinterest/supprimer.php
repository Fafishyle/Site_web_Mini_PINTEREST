<html>
    La photo va être supprimée... <br>
<?php
            session_start ();
            $projet = new PDO("mysql:host=localhost; dbname=bdd; charset=utf8", "root", "");
            //récupère la valeur envoyé par l'URL
            $req = $projet->query("DELETE FROM `photo`
            WHERE `photoId` = '".$_GET['idphoto']."'; ");
?>
Photo supprimée.
<div>
        <a href="index.html" > 
            <h5><span class="titre">◄ |M.P.|</span></h5>
            <span class="alert"> retour à l'accueil</span>
        </a>
        </div>
</html>