<?php
	require_once('scripts/config.php');
	confirm_logged_in();

	$id = $_GET['id'];

	$tbl = 'tbl_products';
	$col = 'product_id';
	
	$found_user_set = getSingle($tbl, $col, $id);

	if(is_string($found_user_set)){
		$message = 'Failed to get user info!';
	}

	if(isset($_POST['submit'])){
		$pname = trim($_POST['product_name']);
		$image = trim($_POST['product_image']);
		$desc = trim($_POST['product_desc']);
		$cost = trim($_POST['product_cost']);

		//Validation
		// if(empty($pname) || empty($image) || empty($desc) || empty($cost)){
		// 	$message = 'Please fill the required fields';
		// }else{
		// 	//Do the edit
		$result = editProduct($id, $pname, $image, $desc, $cost);
		$message = $result;
		// }
	}
?>
<!doctype html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Edit Product</title>
</head>
<body>
	<h2>Edit Product</h2>
	<h3><a href="admin_deletemovie.php">Back to Edit Products</a></h3>
	<?php if(!empty($message)):?>
		<p><?php echo $message;?></p>
	<?php endif;?>

	<?php if($found_user = $found_user_set->fetch(PDO::FETCH_ASSOC)):?>
		<form action="admin_edituser.php" method="post">
			<label for="first-name">Product Name:</label>
			<input type="text" id="pname" name="pname" value="<?php echo $found_user['product_name'];?>"><br><br>

			<label for="image">Product Image:</label>
        	<input type="text" name="image" id="image" value="<?php echo $found_user['product_image'];?>"><br><br>
			
			<label for="cost">Cost: $</label>
        	<input type="text" name="cost" id="cost" value="<?php echo $found_user['product_cost'];?>"><br><br>

			<label for="desc">Description:</label>
        	<input name="desc" id="desc" value="<?php echo $found_user['product_desc'];?>"><br><br>

			<label for="genlist">Product Category:</label><br><br>

			<button type="submit" name="submit">Update Product Info</button>
		</form>
	<?php endif; ?>
</body>
</html>