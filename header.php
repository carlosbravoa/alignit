<?php session_start();?>
<!DOCTYPE html> 
<html> 
<head>

<?php
	if (empty($pagetitle)) {
		$pagetitle = "AlignIT";
	}

	echo "    <title>$pagetitle</title>";
?>
	<script language="javascript" type="text/javascript" src ="jquery-2.1.4.min.js"></script>
	<!-- Bootstrap core CSS -->
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="bootstrap/css/bootstrap-theme.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

<style type="text/css">

	.navbar-brand {
	background-image: url('../../template/logo-uai.png');
	padding-left: 180px;
    background-size: 179px 50px;
    background-repeat: no-repeat;
    color: white !important;
	}
	body {
		    padding-top: 50px;
	}
	.margin-bottom-10px, .margin-bottom-10px input, .margin-bottom-10px select {
		margin-bottom: 10px;
	}

</style>

</head> 
<body>
<?php include 'template/navbar.php'; ?>
<div class="container">