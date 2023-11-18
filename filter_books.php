<?php
require_once 'db_connect.php';

$sql = "SELECT * FROM `media_list` WHERE  `type` = 'book'";

$result = mysqli_query($connect, $sql);

$cards = "";

if(mysqli_num_rows($result) > 0){
    while($row = mysqli_fetch_assoc($result)){
        $cards .= "<div>
            <div class='card'>
                <img src='assets/{$row["image"]}' class='card-img-top' alt='...'>
                <div class='card-body'>
                <h5 class='card-title'>{$row["title"]}</h5>
                <p class='card-text'>{$row["type"]}</p>
                <p class='card-text'>Author: {$row["author_name"]} {$row["author_lastname"]}</p>
                <p class='card-text'>€ {$row["price"]}</p>

    

                <a href='update.php?id={$row["id"]}' class='btn btn-outline-primary'>Update</a>
                <a href='details.php?id={$row["id"]}' class='btn btn-outline-warning'>Details</a>
                <a href='delete.php?id={$row["id"]}' class='btn btn-outline-danger'>Delete</a>
             
            </div>
        </div>
      </div>";
    }
}else {
    $cards = "<p>No results found</p>";
}

mysqli_close($connect);

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> BOOKS </title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <link rel="stylesheet" href="css/style.css">
</head>

<body>
<?php require_once 'navbar.php'?>
    <div class="container mt-5">
        <h1 class="mt-5"> Our Book Collection</h1>
        <div class="row row-cols-lg-3 row-cols-md-2 row-cols-sm-1 row-cols-xs-1">
            <?= $cards ?>
        </div>
    </div>



<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
</body>
</html>