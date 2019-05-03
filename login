<?php
include('baglan.php')
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>iofrm</title>
    <link rel="stylesheet" type="text/css" href="css/trbootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/trfontawesome-all.min.css">
    <link rel="stylesheet" type="text/css" href="css/triofrm-style.css">
    <link rel="stylesheet" type="text/css" href="css/triofrm-theme1.css">
</head>
<body>
    <div class="form-body" class="container-fluid">
        <div class="row">
            <div class="img-holder">
                <div class="bg"></div>
                <div class="info-holder">

                </div>
            </div>
            <div class="form-holder">
                <div class="form-content">
                    <div class="form-items">
                        <h3>Sitemize Giriş Yapın!</h3>
                        
                        <div class="page-links">
                            <a href="login1.html" class="active">Login</a><a href="register1.php">Register</a>
                        </div>
                        <form action="" method="POST">
                            <input type="text" name="email" placeholder="Enter your email address...">
                            <input type="password" name="password" placeholder="Password">
                            <div class="form-button">
                                <button id="submit" type="submit" name="login" class="ibtn">Login</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
<?php
session_start();

ob_start();
if($_POST){
	$sql = "select * from kullanicilar where email='$_POST[email]' and password='$_POST[password]'";
	$sorgu = mysqli_query($baglanti, $sql);
	if (mysqli_num_rows($sorgu) >= 1) {
		$_SESSION["login"] = "true";

		$_SESSION["email"] = $email;

		$_SESSION["password"] = $password;	
		header("Location:index-3.php");
	}
	else{
		echo "kullanıcı bilgileri eşleşmedi";
	}
}

?>
