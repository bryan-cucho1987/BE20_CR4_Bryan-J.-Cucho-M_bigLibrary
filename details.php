<?php
    require_once 'db_connect.php';
    $sql = "SELECT * FROM `media_list` WHERE id = $_GET[id]";
    $result = mysqli_query($connect, $sql);
    $row = mysqli_fetch_assoc($result);
    $card = "";
    $card.= "
        <div class='p-2'>
            <div class='card'>
                <img src='assets/{$row['image']}' class='card-img-top' alt='...'>
                <div class='card-body'>
                        <h5 class='card-title'>{$row['title']}</h5>
                        <p class='card-text'>{$row['description']}</p>
                        <p class='card-text'>{$row['isbn']}</p> 
                        <p class='card-text'>{$row['type']}</p>
                        <p class='card-text'>{$row['author_name']}</p>
                        <p class='card-text'>{$row['author_lastname']}</p>
                        <p class='card-text'>{$row['publisher_name']}</p>
                        <p class='card-text'>{$row['publisher_address']}</p>
                        <p class='card-text'>{$row['publish_date']}</p>
                        <p class='card-text'>€{$row['price']}</p>

                        <a href='update.php?id={$row['id']}' class='btn btn-outline-primary'>Update</a>
                        <a href='delete.php?id={$row['id']}' class='btn btn-outline-danger'>Delete</a>
                        <a href='index.php?id={$row['id']}' class='btn btn-outline-warning'>Home</a>
                       
                </div>
            </div>
       </div>
    ";
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> Details </title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <link rel="stylesheet" href="CSS/style.css">
</head>

<body>
<?php require_once 'navbar.php'?>
    <div class="container mt-5">
        <h1 class="mt-5"> Details </h1>
        <div class="container2">
            <?=$card;?>
        </div>
    </div>



    <?php require_once 'footer.php';?>
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
</body>
</html>