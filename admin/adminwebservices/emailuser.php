<?php

	require '../lib/phpmailer/PHPMailerAutoload.php';


	if(!isset($_REQUEST['json']) || $_REQUEST['json']==''){
		echo "wrong";
		return;
	}

	require_once("webservice_technical_header.php");

	$users=json_decode($_REQUEST['json']);
	
	if(!is_array($users)){
		echo "wrong";
		return;
	}




	$mail = new PHPMailer;

	//$mail->SMTPDebug = 3;                               // Enable verbose debug output

	//$mail->isSMTP();                                      // Set mailer to use SMTP
	$mail->Host = 'localhost';  // Specify main and backup SMTP servers
	//$mail->SMTPAuth = true;                               // Enable SMTP authentication
	//$mail->Username = 'user@example.com';                 // SMTP username
	//$mail->Password = 'secret';                           // SMTP password
	//$mail->SMTPSecure = 'tls';                            // Enable TLS encryption, `ssl` also accepted
	$mail->Port = 587;                                    // TCP port to connect to

	$mail->setFrom('from@example.com', 'Mailer');
	
	$mail->addReplyTo('info@example.com', 'Information');
	$mail->addCC('cc@example.com');
	$mail->addBCC('bcc@example.com');

	$mail->isHTML(true);                                  // Set email format to HTML



	foreach ($users as $username) {

		$query="SELECT * FROM `user` WHERE `username` LIKE '".$username."' ;";
		$result=$conn->query($query);
		if(!$result){
			echo "wrong";
			return;
		}

		$row=$result->fetch_assoc();
		$email=$row['email'];

		
		$mail->addAddress($email);     // Add a recipient
		
		$mail->Subject = "Hi ".$username.", Chech Out Your IASBS Personal Page Publisher Account";
		$mail->Body    = "Hey there ,".$username."<br/>Your IASBS Personal Page Publisher Account is Up & About, so make sure to check it out.<br>Here's your Login <a href='#' target='_blank'>Link</a>";
		$mail->AltBody = '';

		if(!$mail->send()) {
		    echo "wrong";
		    return;
		}

	}
	
	echo "right";
?>