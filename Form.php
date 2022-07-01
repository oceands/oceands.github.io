<?php

$errors="";

$ToMail="osd331@uowmail.edu.au";

if(empty($_POST["name"]) ||empty($_POST["Email"]) ||empty($_POST["Message"])||empty($_POST["Org"]))
{

$errors .= "\n Error: All fields are required!";

}

$FirstN=$_POST["name"];

$LastN=$_POST["Lname"];

$ORGname=$_POST["Org"];

$FromEmail=$_POST["Email"];

$Body=$_POST["Message"];

$greeting="Hey!, You have mail";




if (empty($errors))
{
$to=$ToMail;
$email_subject="Contact form submission:". $FirstN.' '.$LastN;
$email_body="$greeting\n from $FirstN\n"."Email address: $FromEmail\n Message: $Body";

mail($to,$email_subject,$email_body);
}





?>
