<?php

include 'include/db.php';

session_start();
$filteredId = 1;

if(isset($_GET['id'])) {
    //använd get id
    //$id = $_GET['id'];    
    $filteredId = filter_input(INPUT_GET, 'id', FILTER_VALIDATE_INT);
    $_SESSION['id'] = $filteredId;
} elseif (isset($_SESSION['id'])) {
        $filteredId = filter_var($_SESSION['id'], FILTER_VALIDATE_INT);
}

echo $id;

// Work in proggress

if(isset($_GET['story_id = 12'])) {
    $_SESSION['story_id'] = $val;
} //elseif (isset($_SESSION['links'])) {
    
//}

echo $_SESSION;

$sth = $dbh->prepare('SELECT * FROM story
                    WHERE id = :filteredId');
$sth->bindParam(':filteredId', $filteredId);
$sth->execute();
$story = $sth->fetch(PDO::FETCH_ASSOC);

$sth = $dbh->prepare('SELECT * FROM links
                    WHERE story_id = :filteredId');
$sth->bindParam(':filteredId', $filteredId);
$sth->execute();
$links = $sth->fetchAll(PDO::FETCH_ASSOC);

$page_title = "Soloäventyr - Start";

include 'views/solo_layout.php';

?>