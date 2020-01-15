<?php
	
	session_start();

	if(isset($_SESSION['admin'])){
		header('location: admin/home.php');
	}
	

	if(isset($_SESSION['seller'])){
		$conn = $pdo->open();

		try{
			$stmt = $conn->prepare("SELECT * FROM seller WHERE id=:id");
			$stmt->execute(['id'=>$_SESSION['seller']]);
			$user = $stmt->fetch();
		}
		catch(PDOException $e){
			echo "There is some problem in connection: " . $e->getMessage();
		}

		$pdo->close();
	}

?>