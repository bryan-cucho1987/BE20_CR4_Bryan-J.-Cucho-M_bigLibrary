<?php
function upload($image){

    if($image["error"] == 4){ // checking if a file has been selected, it will return 0 if you choose a file, and 4 if you didn't
        $imageName = "default.jpg"; // the file name will be default.jpg (default image for media entry)
        $message = "No image has been chosen, but you can upload an image later :)";
    } else{
        $checkIfImage = getimagesize($image["tmp_name"]); // checking if you selected an image, return false if you not selected an image
        $message = $checkIfImage ? "Ok" : "Not an image";
    }

     if($message == "Ok"){
        $ext = strtolower(pathinfo($image[ "name"],PATHINFO_EXTENSION)); // taking the extension data from the image
        $imageName = uniqid( ""). "." . $ext; // changing the name of the image to random string and numbers
        $destination = "assets/{$imageName}"; // where the file will be saved
        move_uploaded_file($image["tmp_name"], $destination); // moving the file to the images folder
    }

    return [$imageName, $message]; // returning an array with two values, the name of the image and the message
}

?>

