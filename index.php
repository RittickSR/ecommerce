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
                        
						<?php
                        $conn = $pdo->open();
                            
                        echo "<h2>Popular Products</h2>";
                        try{
		       			 	$inc = 4;	
						    $stmt = $conn->prepare("SELECT * FROM products WHERE category_id = 5");
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
		       									<b>&#x20B9; ".number_format($row['price'], 2)."</b>
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

                        
                        
                        echo "<h2>Recommended</h2>";
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
		       									<b>&#x20B9; ".number_format($row['price'], 2)."</b>
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
                        
                    
                        
                    
                    
                    
                        echo "<h2>Best Sellers</h2>";
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
		       									<b>&#x20B9; ".number_format($row['price'], 2)."</b>
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
                    
                    
                        
                        echo "<h2>Similar Products</h2>";
                        try{
		       			 	$inc = 4;	
						    $stmt = $conn->prepare("SELECT * FROM products WHERE category_id = 8");
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
		       									<b>&#x20B9; ".number_format($row['price'], 2)."</b>
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
    
    <button class="open-button" onclick="openForm()">Chat with us!</button>

<div class="chat-popup" id="myForm">
  <form action="/action_page.php" class="form-container">
     <iframe
        allow="microphone;"
        width="280"
        height="430"
        src="https://console.dialogflow.com/api-client/demo/embedded/a12f53d8-b9c2-4e6b-a48c-5ce1ed3b7c5f">
    </iframe>  
    
    <button type="button" class="btn cancel" onclick="closeForm()">Close</button>
  </form>
</div>

<script>
function openForm() {
  document.getElementById("myForm").style.display = "block";
}

function closeForm() {
  document.getElementById("myForm").style.display = "none";
}
</script>
    
    
    
 <style>
    .open-button {  
  background-color: #191970 !important;
  color: white;
  padding: 10px 20px;
  border: none;
  cursor: pointer;
  opacity: 0.8;
  position: fixed;
  bottom: 20px;
  right: 30px;
  width: 280px;
}

/* The popup chat - hidden by default */
.chat-popup {
  display: none;
  position: fixed;
  bottom: 20px;
  right: 22px;
  width: 280px;
  /*border: 3px solid #f1f1f1;
    z-index: 9;*/
  
}

/* Add styles to the form container */
.form-container {
   
   /* right: auto;
  background-color: white;
      max-width: 300px;
            padding: 10px;*/
}
     
.form-container .btn {
  background-color: #4CAF50;
  color: white;
  padding: 10px 50px !important;
  border: none;
  cursor: pointer;
  bottom: 20px;
  right: 20px;
  width: 280px;
  margin-bottom:10px;
 /* opacity: 0.8;*/
}

.form-container .cancel {
  background-color: red;
}

.form-container .btn:hover, .open-button:hover {
  opacity: 1;
}
</style>   
    

  	<?php include 'includes/footer.php'; ?>
</div>

<?php include 'includes/scripts.php'; ?>
</body>
</html>