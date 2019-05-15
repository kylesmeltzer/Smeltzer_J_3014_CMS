<?php 
	function createUser($fname,$username,$password,$email){
		include('connect.php');
	
		$create_user_query = 'INSERT INTO tbl_user(user_fname,user_name,user_pass,user_email)';
		$create_user_query .= ' VALUES(:fname,:username,:password,:email)';

		$create_user_set = $pdo->prepare($create_user_query);
		$create_user_set->execute(
			array(
				':fname'=>$fname,
				':username'=>$username,
				':password'=>$password,
				':email'=>$email
			)
		);

		if($create_user_set->rowCount()){
			redirect_to('index.php');
		}else{
			$message = 'Your hiring practices have failed you.. this individual sucks...';
			return $message;
		}
	}


	function editProduct($id, $pname, $image, $desc, $cost){
		include('connect.php');

		$update_user_query = 'UPDATE tbl_products SET product_name=:pname, product_image=:pimage, product_desc=:pdesc, product_cost=:pcost WHERE product_id = :id';

		$update_user_set = $pdo->prepare($update_user_query);
		$update_user_set->execute(
			array(
				':pname'=>$pname,
				':pimage'=>$image,
				':pdesc'=>$desc,
				':pcost'=>$cost,
				':id'=>$id
			)
		);
		//When update successfully, redirect user to index.php
		if($update_user_set->rowCount()){
			redirect_to('index.php');
		}else{
			//otherwise, return an error message
			$message = 'Product failed to update...';
			return $message;
		}
	}

	function deleteProduct($id){
		include('connect.php');
		$delete_product_query = 'DELETE FROM tbl_products WHERE product_id = :id';
		$delete_product = $pdo->prepare($delete_product_query);
		$delete_product->execute(
			array(
				':id'=>$id
			)
		);

		if($delete_product){
			redirect_to('../index.php');
			$message = 'Product deleted.';
		}else{
			$message = 'Product not deleted.';
			return $message;
		}
		
		//4.* (Dev) What's the security concern here???
	}