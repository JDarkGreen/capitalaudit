<?php
	
	//Obtenemos las valores enviados
	$name    = $_POST['nombre'];
	$from    = $_POST['email'];
	$tel     = $_POST['tel'];
	$subject = $_POST['asunto'];
	$message = $_POST['message'];

	//Email A quien se le rinde cuentas
	$webmaster_email  = "jgonzales@capitalaudit.com.pe";
	$webmaster_email2 = "jesusmgonzalesaguilar@gmail.com";
	$webmaster_email3 = "gonzalesgonzalesjose224@gmail.com";
	$webmaster_email4 = "webmaster@ingenioart.com";

	include("./class.phpmailer.php");
 	include("./class.smtp.php");

	$mail = new PHPMailer();

	$mail->From     = $from;
	$mail->FromName = $name;
	$mail->AddAddress( $webmaster_email );
	$mail->AddAddress( $webmaster_email2 );
	$mail->AddAddress( $webmaster_email3 );
	$mail->AddAddress( $webmaster_email4 );

	$mail->IsHTML(false); // send as HTML
	$mail->Subject = $subject;

	//Customizar el mensaje
	$message .= " Telefono: " . $tel;

	$mail->Body = $message;

	//Estados y mensajes 
	$result = [];
	$result['status']  = 'false';
	$result['message'] = '';


	if($mail->Send()){
		
		$result['status']  = 'ok';

		$result['message'] = "Su mensaje a sido enviado con éxito, estaremos respondiendo a la brevedad."; 
	} else {

		$result['message'] = "Mailer Error: " . $mail->ErrorInfo ; 
	}

	echo json_encode( $result );