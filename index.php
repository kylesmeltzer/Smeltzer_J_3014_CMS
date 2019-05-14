<?php require_once('admin/scripts/config.php');
if(isset($_GET['filter'])){
	$tbl = 'tbl_products';
	$tbl_2 = 'tbl_categories';
	$tbl_3 = 'tbl_prod_categ';
	$col = 'product_id';
	$col_2 = 'categ_id';
	$col_3 = 'categ_name';
	$filter = $_GET['filter'];
	$results = filterResults($tbl,$tbl_2,$tbl_3,$col,$col_2,$col_3,$filter);
}else{
	$results = getAll('tbl_products');
}
?>

<!doctype html>
<html>

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>SportChek - Home</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" media="screen" href="css/main.css">
</head>

<body>

    <header>
        <h1>SportChek</h1>
		<a href="admin/index.php">Admin</a>
		
		<nav>
		<ul>
			<li><a href="index.php?filter=shoes">Shoes</a></li>
			<li><a href="index.php?filter=jackets">Jackets</a></li>
			<li><a href="index.php?filter=skates">Skates</a></li>
			<li><a href="index.php?filter=boots">Boots</a></li>
			<li><a href="index.php?filter=jerseys">Jerseys</a></li>
			<li><a href="index.php?filter=electronics">Electronics</a></li>
			<li><a href="index.php?filter=hoodies">Hoodies</a></li>
			<li><a href="index.php">All</a></li>
		</ul>
		</nav>
	</header>
	
    <section id="products">
		<h2>Products</h2>
        <div class="productBox">
		<?php while($row = $results->fetch(PDO::FETCH_ASSOC)):?>
            <img class="productImg" width="160px" src="img/<?php echo $row['product_image'];?>">
			<h3><?php echo $row['product_name'];?></h3>
			<h3><?php echo $row['product_cost'];?></h3>
            <p><?php echo $row['product_desc'];?></p>
		<?php endwhile;?>
		</div>
	</section>

</body>
</html>