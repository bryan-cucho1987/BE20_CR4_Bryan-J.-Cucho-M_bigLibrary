<?php
require_once "db_connect.php" ;
require_once "upload.php";

$id = $_GET[ "id"]; // to take the value from the parameter "id" in the url
$sql = "SELECT * FROM media_list WHERE id = $id";
$result = mysqli_query($connect, $sql);
$row = mysqli_fetch_assoc($result);


if(isset($_POST["update"])){
    /* taking values from inputs */
    $title = $_POST["title"];
    $isbn = $_POST["isbn"];
    $description = $_POST["description"];
    $type = $_POST["type"];
    $author_name = $_POST["author_name"];
    $author_lastname = $_POST["author_lastname"];
    $publisher_name = $_POST["publisher_name"];
    $publisher_address = $_POST["publisher_address"];
    $publish_date = $_POST["publish_date"];
    $price = $_POST["price"];
    $image = upload($_FILES["image"]);

    /* checking if a picture has been selcted in the input for the image */
    if($_FILES["image"]["error"] == 0){
        if($row["image"] != "default.jpg" ){
            unlink("assets/$row[image]" );
        }
        $sql = "UPDATE media_list SET title = '$title', isbn = '$isbn', description = '$description', type = '$type', `author_name` = '$author_name', publisher_name = '$publisher_name', publisher_address = '$publisher_address', publish_date = '$publish_date', price = $price, `image` = '$image[0]' WHERE id = {$id}" ;
    }else {
        $sql = "UPDATE media_list SET title = '$title', isbn = '$isbn', description = '$description', type = '$type', `author_name` = '$author_name', publisher_name = '$publisher_name', publisher_address = '$publisher_address', publish_date = '$publish_date', price = $price WHERE `id` = {$id}";
    }

    if(mysqli_query($connect, $sql)){
        echo "<div class='alert alert-success' role='alert'>
           Media entry has been updated, {$image[1]}
         </div>";
        header("refresh: 3; url= index.php");
    }else {
        echo "<div class='alert alert-danger' role='alert'>
           error found, {$image[1]}
         </div>";
    }
}
mysqli_close($connect);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> UPDATE </title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <link rel="stylesheet" href="CSS/style.css">
</head>
<body>
<?php require_once 'navbar.php'?>
<div class="container mt-5">
    <h2>Update media entry</h2>
    <form method="POST" enctype="multipart/form-data">
    <div class="mb-3 mt-3">
                <label for="title" class="form-label">Title</label>
                <input type="text" class="form-control" id="title" aria-describedby="title" name="title" value="<?= $row["title"] ?>">
            </div>
            <div class="mb-3 mt-3">
                <label for="author_name" class="form-label">Author's name</label>
                <input type="text" class="form-control" id="author_name" aria-describedby="author_name" name="author_name" value="<?= $row["author_name"] ?>">
            </div>
            <div class="mb-3 mt-3">
                <label for="author_lastname" class="form-label">Author's last name</label>
                <input type="text" class="form-control" id="author_lastname" aria-describedby="author_lastname" name="author_lastname" value="<?= $row["author_lastname"] ?>">
            </div>
            <div class="mb-3 mt-3">
                <label for="description" class="form-label">Description</label>
                <input type="text" class="form-control" id="description" aria-describedby="description" name="description" value="<?= $row["description"] ?>">
            </div>
            <div class="mb-3 mt-3">
                <label for="isbn" class="form-label">ISBN</label>
                <input type="text" class="form-control" id="isbn" aria-describedby="isbn" name="isbn" value="<?= $row["isbn"] ?>">
            </div>
            <div class="mb-3 mt-3">
                <div class="mb-3 mt-3">
                <label for="publisher_address" class="form-label">Publisher's address</label>
                <input type="text" class="form-control" id="publisher_address" aria-describedby="publisher_address" name="publisher_address" value="<?= $row["publisher_address"] ?>">
            </div>
            <div class="mb-3 mt-3">
                <label for="publish_date" class="form-label">Publish date</label>
                <input type="text" class="form-control" id="publish_date" aria-describedby="publish_date" name="publish_date" value="<?= $row["publish_date"] ?>">
            </div>
            <div class="mb-3">
                <label for="publisher_name" class="form-label">Publisher's name</label>
                <select name="publisher_name" id="publisher_name">
                    <option value="Waterstones" <?php echo $row["publisher_name"] == "Waterstones" ? "selected" : ""?>>Waterstones</option>
                    <option value="Thalia" <?php echo $row["publisher_name"] == "Thalia" ? "selected" : ""?>>Thalia</option>
                </select>
            </div>
            
            <div class="mb-3">
                <label for="price" class="form-label">Price €</label>
                <input type="number" class="form-control" id="price" aria-describedby="price" name="price" value="<?= $row["price"] ?>">
            </div>
            <div class="mb-3">
                <label for="image" class="form-label"> Image </label>
                <input type="file" class="form-control" id="image" aria-describedby="image" name="image">
            </div>
            <div class="mb-3">
                <label for="type">Type:</label>
                <select name="type" id="type">
                    <option value="book" <?php echo $row["type"] == "book" ? "selected" : ""?>>BOOK</option>
                    <option value="cd" <?php echo $row["type"] == "cd" ? "selected" : ""?>>CD</option>
                    <option value="dvd" <?php echo $row["type"] == "dvd" ? "selected" : ""?>>DVD</option>
                </select>
            </div>
            <button name="update" type="submit" class="btn btn-primary">Update media entry</button>
            <a href="index.php" class="btn btn-warning">Back to home page</a>
    </form>
</div>
<script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
</body>
</html>