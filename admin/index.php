<?php 
	require_once('scripts/config.php');
	confirm_logged_in();
?>
<!doctype html>
<html>
<head>
	<meta charset="UTF-8">
	<title>SportChek - Admin</title>
</head>
<body>
	<h1>Admin Dashboard</h1>
	<h3>Welcome <?php echo $_SESSION['user_name'];?></h3>
	<p>This is the admin dashboard page</p>

	<nav>

		<ul>
			<li><a href="admin_addproduct.php">Add Product</a></li>
			<li><a href="admin_deleteproduct.php">Edit Products</a></li>
			<li><a href="scripts/caller.php?caller_id=logout">Sign Out</a></li>
		</ul>



	</nav>
</body>
</html>