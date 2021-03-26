
<?php

function getBD(){

$user = 'root';
$pass = 'root';


try {
    $dbh = new PDO('mysql:host=localhost;dbname=bd_mw', $user, $pass);
    return $dbh;
    
} catch (PDOException $e) {
    print "Erreur !: " . $e->getMessage() . "<br/>";
    die();
}
}
?>