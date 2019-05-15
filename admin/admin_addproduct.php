<?php
require_once 'scripts/config.php';
confirm_logged_in();

$categ_tbl          = 'tbl_categories';
$product_categories = getAll($categ_tbl);

if (isset($_POST['submit'])) {
    $prodPic   = $_FILES['image'];
    $prodName   = $_POST['title'];
    $prodCost    = $_POST['cost'];
    $prodDesc   = $_POST['desc'];
    $category   = $_POST['genList'];
    $result  = addProduct($prodPic, $prodName, $prodCost, $prodDesc, $category);
    $message = $result;
}

?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Add Product</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
    <?php if (!empty($message)): ?>
        <p><?php echo $message; ?></p>
    <?php endif; ?>
    <form action="admin_addproduct.php" method="post" enctype="multipart/form-data">
        
        <label for="title">Product Name:</label>
        <input type="text" name="title" id="title" value=""><br><br>

        <label for="image">Product Image:</label>
        <input type="file" name="image" id="image" value=""><br><br>

        <label for="cost">Cost: $</label>
        <input type="text" name="cost" id="cost" value=""><br><br>

        <label for="desc">Description:</label>
        <textarea name="desc" id="desc"></textarea><br><br>

        <label for="genlist">Product Category:</label>
        <select name="genList" id="genlist">
            <option>Please select a category..</option>
            <?php while ($product_category = $product_categories->fetch(PDO::FETCH_ASSOC)): ?>
            <option value="<?php echo $product_category['categ_id']; ?>">
                <?php echo $product_category['categ_name']; ?>
            </option>
            <?php endwhile; ?>
        </select><br><br>

        <button type="submit" name="submit">Add Product</button>
    </form>
</body>
</html>