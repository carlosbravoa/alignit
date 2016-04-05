<?php 
	include 'header.php';
	?>
<div class="col-md-1"></div>
<div class="col-md-10">
<?php
	include 'class.php';
    $a = new usuario();
    $a->sessionstarter();
    $b = new it_excellence();
	$c = new IT_Assets();
    if ($a->edbu == 0){
	    	echo "Ud no tiene permiso para estar aca.";
	    	die();
	    }
    $fk = $_SESSION['company'];
		 echo "
		 <div class='alert alert-success' role='alert'>
        <strong> </strong> Alineación actualizada correctamente.
      </div>

	<table id='2'>
    </table><br>
	<a href = 'menuuser.php'><input type='submit' value='Go to Menu'></a> ";
?>
  
	</div>
	<div class="col-md-1"></div>
 <?php 
	include 'footer.php';
	?>
