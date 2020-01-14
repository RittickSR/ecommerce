<?php include 'includes/session.php'; ?>
<?php include 'includes/header.php'; ?>
<?php
	//$slug = $_GET['category'];
    $slug = 'home-decor';
	$conn = $pdo->open();

	try{
		$stmt = $conn->prepare("SELECT * FROM category WHERE cat_slug = :slug");
		$stmt->execute(['slug' => $slug]);
		$cat = $stmt->fetch();
		$catid = $cat['id'];
	}
	catch(PDOException $e){
		echo "There is some problem in connection: " . $e->getMessage();
	}

	$pdo->close();

?>

<html>
<head>
<style>
    .carousel-control > .fa {
        font-size: 20px;
        position: absolute;
        top: 50%;
        z-index: 5;
        display: inline-block;
        margin-top: -20px;
    }
    .carousel-inner{
        width:100%;
        height:400px;
        max-width: 100% !important;
        max-height: 100% !important;
    }
    .sliderimg{
        width: 1200px;
        height: 500px;
    }
</style>
</head>
<body class="hold-transition skin-blue layout-top-nav">
<div class="wrapper">

	<?php include 'includes/navbar.php'; ?>
	 
	  <div class="content-wrapper">
	    <div class="container">

	      <!-- Main content -->
	      <section class="content">
	        <div class="row">
	        	<div class="col-sm-20">
	        		<?php
	        			if(isset($_SESSION['error'])){
	        				echo "
	        					<div class='alert alert-danger'>
	        						".$_SESSION['error']."
	        					</div>
	        				";
	        				unset($_SESSION['error']);
	        			}
	        		?>
	        		<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
		                <ol class="carousel-indicators">
		                  <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
		                  <li data-target="#carousel-example-generic" data-slide-to="1" class=""></li>
		                  <li data-target="#carousel-example-generic" data-slide-to="2" class=""></li>
		                </ol>
		                <div class="carousel-inner">
		                  <div class="item active">
                              <img class="sliderimg" src="images/tribes2.jpg" alt="Second slide">
		                  </div>
		                  <div class="item">
		                      <img class="sliderimg" src="images/tribes3.jpg" alt="Third slide">
		                  </div>
		                  <div class="item">
                              <img class="sliderimg" src="images/tribes1.jpg" alt="First slide">
		                  </div>
		                </div>
		                <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
		                  <span class="fa fa-angle-left"></span>
		                </a>
		                <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
		                  <span class="fa fa-angle-right"></span>
		                </a>
		            </div>
		            <h2>Popular Products</h2>
                    
						<?php
                        $conn = $pdo->open();
                            
                        echo "<h2>Popular Products</h2>";
                        try{
		       			 	$inc = 4;	
						    $stmt = $conn->prepare("SELECT * FROM products WHERE category_id = 6");
						    $stmt->execute(['catid' => $catid]);
						    foreach ($stmt as $row){
						    	$image = (!empty($row['photo'])) ? 'images/'.$row['photo'] : 'images/noimage.jpg';
						    	$inc = ($inc == 4) ? 1 : $inc + 1;
	       						if($inc == 1) echo "<div class='row'>";
	       						echo "
	       							<div class='col-sm-3'>
	       								<div class='box box-solid'>
		       								<div class='box-body prod-body'>
		       									<img src='".$image."' width='100%' height='230px' class='thumbnail'>
		       									<h5><a href='product.php?product=".$row['slug']."'>".$row['name']."</a></h5>
		       								</div>
		       								<div class='box-footer'>
		       									<b>&#36; ".number_format($row['price'], 2)."</b>
		       								</div>
	       								</div>
	       							</div>
	       						";
	       						if($inc == 4) echo "</div>";
                                if($inc == 4) break;
						    }
						    if($inc == 1) echo "<div class='col-sm-3'></div><div class='col-sm-3'></div></div>"; 
							if($inc == 2) echo "<div class='col-sm-3'></div></div>";
						}
						catch(PDOException $e){
							echo "There is some problem in connection: " . $e->getMessage();
						}    


		       			try{
		       			 	$inc = 4;	
						    $stmt = $conn->prepare("SELECT * FROM products WHERE category_id = :5");
						    $stmt->execute(['catid' => $catid]);
						    foreach ($stmt as $row){
						    	$image = (!empty($row['photo'])) ? 'images/'.$row['photo'] : 'images/noimage.jpg';
						    	$inc = ($inc == 4) ? 1 : $inc + 1;
	       						if($inc == 1) echo "<div class='row'>";
	       						echo "
	       							<div class='col-sm-3'>
	       								<div class='box box-solid'>
		       								<div class='box-body prod-body'>
		       									<img src='".$image."' width='100%' height='230px' class='thumbnail'>
		       									<h5><a href='product.php?product=".$row['slug']."'>".$row['name']."</a></h5>
		       								</div>
		       								<div class='box-footer'>
		       									<b>&#36; ".number_format($row['price'], 2)."</b>
		       								</div>
	       								</div>
	       							</div>
	       						";
	       						if($inc == 4) echo "</div>";
                                if($inc == 4) break;
						    }
						    if($inc == 1) echo "<div class='col-sm-3'></div><div class='col-sm-3'></div></div>"; 
							if($inc == 2) echo "<div class='col-sm-3'></div></div>";
						}
						catch(PDOException $e){
							echo "There is some problem in connection: " . $e->getMessage();
						}
                        
                    
                        
                    
                    
                    
                        echo "<h2>Popular Products</h2>";
                        try{
		       			 	$inc = 4;	
						    $stmt = $conn->prepare("SELECT * FROM products WHERE category_id = 6");
						    $stmt->execute(['catid' => $catid]);
						    foreach ($stmt as $row){
						    	$image = (!empty($row['photo'])) ? 'images/'.$row['photo'] : 'images/noimage.jpg';
						    	$inc = ($inc == 4) ? 1 : $inc + 1;
	       						if($inc == 1) echo "<div class='row'>";
	       						echo "
	       							<div class='col-sm-3'>
	       								<div class='box box-solid'>
		       								<div class='box-body prod-body'>
		       									<img src='".$image."' width='100%' height='230px' class='thumbnail'>
		       									<h5><a href='product.php?product=".$row['slug']."'>".$row['name']."</a></h5>
		       								</div>
		       								<div class='box-footer'>
		       									<b>&#36; ".number_format($row['price'], 2)."</b>
		       								</div>
	       								</div>
	       							</div>
	       						";
	       						if($inc == 4) echo "</div>";
                                if($inc == 4) break;
						    }
						    if($inc == 1) echo "<div class='col-sm-3'></div><div class='col-sm-3'></div></div>"; 
							if($inc == 2) echo "<div class='col-sm-3'></div></div>";
						}
						catch(PDOException $e){
							echo "There is some problem in connection: " . $e->getMessage();
						} 
                    
                    
                        
                        echo "<h2>Popular Products</h2>";
                        try{
		       			 	$inc = 4;	
						    $stmt = $conn->prepare("SELECT * FROM products WHERE category_id = 7");
						    $stmt->execute(['catid' => $catid]);
						    foreach ($stmt as $row){
						    	$image = (!empty($row['photo'])) ? 'images/'.$row['photo'] : 'images/noimage.jpg';
						    	$inc = ($inc == 4) ? 1 : $inc + 1;
	       						if($inc == 1) echo "<div class='row'>";
	       						echo "
	       							<div class='col-sm-3'>
	       								<div class='box box-solid'>
		       								<div class='box-body prod-body'>
		       									<img src='".$image."' width='100%' height='230px' class='thumbnail'>
		       									<h5><a href='product.php?product=".$row['slug']."'>".$row['name']."</a></h5>
		       								</div>
		       								<div class='box-footer'>
		       									<b>&#36; ".number_format($row['price'], 2)."</b>
		       								</div>
	       								</div>
	       							</div>
	       						";
	       						if($inc == 4) echo "</div>";
                                if($inc == 4) break;
						    }
						    if($inc == 1) echo "<div class='col-sm-3'></div><div class='col-sm-3'></div></div>"; 
							if($inc == 2) echo "<div class='col-sm-3'></div></div>";
						}
						catch(PDOException $e){
							echo "There is some problem in connection: " . $e->getMessage();
						} 
                    
                    
                    
                    
                    
						$pdo->close();
		       		?> 

		       		
	        	</div>
	        	
	        </div>
	      </section>
	     
	    </div>
	  </div>
  
  	<?php include 'includes/footer.php'; ?>
</div>

<?php include 'includes/scripts.php'; ?>
</body>
</html>