<?php

function addProduct($prodPic, $prodName, $prodCost, $prodDesc, $category)
{
    try {
        include 'connect.php';

        $file_type      = pathinfo($prodPic['name'], PATHINFO_EXTENSION);
        $accepted_types = array('gif', 'jpg', 'jpe', 'jpeg', 'png');
        if (!in_array($file_type, $accepted_types)) {
            throw new Exception('Wrong file type!');
        }

        $target_path = '../img/' . $prodPic['name'];
        if (!move_uploaded_file($prodPic['tmp_name'], $target_path)) {
            throw new Exception('Failed to move uploaded file, check permission!');
        }

        $th_copy = '../img/TH_' . $prodPic['name'];
        if (!copy($target_path, $th_copy)) {
            throw new Exception('Failed to move copy file, check permission!');
        }

        $insert_movie_query = 'INSERT INTO tbl_products(product_image, product_name, product_cost, product_desc) VALUES(:product_image, :product_name, :product_cost, :product_desc)';

        $insert_movie  = $pdo->prepare($insert_movie_query);
        $insert_result = $insert_movie->execute(
            array(
                ':product_image'    => $prodPic['name'],
                ':product_name'     => $prodName,
                ':product_cost'     => $prodCost,
                ':product_desc'     => $prodDesc,
            )
        );

        if (!$insert_result) {
            throw new Exception('Failed to insert the new movie!');
        }
        
        $last_id = $pdo->lastInsertId();

        $insert_genre_query = 'INSERT INTO tbl_prod_categ(product_id, categ_id) VALUES(:product_id, :categ_id)';
        $insert_genre       = $pdo->prepare($insert_genre_query);
        $insert_genre->execute(
            array(
                ':product_id' => $last_id,
                ':categ_id'  => $category,
            )
        );

        if (!$insert_genre->rowCount()) {
            throw new Exception('Failed to set Genre!');
        }

        redirect_to('index.php');
    } catch (Exception $e) {
        $error = $e->getMessage();
        return $error;
    }
}
