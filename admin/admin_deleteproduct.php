<?php 
    require_once('scripts/config.php');
    confirm_logged_in();

    $tbl = 'tbl_products';
    $products = getAll($tbl);

    
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Edit Products</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
    <h2>Edit Products</h2>
    <h3><a href="index.php">Back to Admin</a></h3>
    <table>
        <thead>
            <tr>
                <th>Product ID</th>
                <th>Product Name</th>
                <th>Display Image</th>
                <th>Description</th>
                <th>Cost</th>
                <th>Edit</th>
                <th>Delete</th>
            </tr>
        </thead>
        <tbody>
            <?php while($product = $products->fetch(PDO::FETCH_ASSOC)):?>
            <tr>
                <td><?php echo $product['product_id'];?></td>
                <td><?php echo $product['product_name'];?></td>
                <td><img class="productImg" width="50px" src="../img/<?php echo $product['product_image'];?>" alt="<?php echo $product['product_image'];?>"></td>
                <td><?php echo $product['product_desc'];?></td>
                <td><?php echo $product['product_cost'];?></td>
                <td><a href="admin_editproduct.php?id=<?php echo $product['product_id']; ?>">Edit</a></td>
                <td><a href="scripts/caller.php?caller_id=delete&id=<?php echo $product['product_id']; ?>">Delete</a></td>
            </tr>
            <?php endwhile; ?>
        </tbody>
    </table>
</body>
</html>