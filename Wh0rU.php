// This is a simple php page that sends the specified email address information of the IP address that visited the page
// If you aren't sure what you should use this for, then you shouldn't be using it... ;-)
// Made by .0. sudo_KING <3 Happy Hunting!

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
<html>
<body>
<img
src="http://themodernape.com/wp-content/uploads/2014/09/internet-troll-620x348.jpg">
<?php
// set your e-mail address first, where you'll receive the notifications
$yourEmailAddress = "<your-email-here>";
$emailSubject = "New Visitor on Webpage";
$remoteIpAddress = $_SERVER['REMOTE_ADDR'];
$Date = date("l/m/d/Y, h:i:s:a ");
$E = ", ";
$hostname = gethostbyaddr($remoteIpAddress);
$useragent = $_SERVER['HTTP_USER_AGENT'];
$F = ", ";
$emailContent = "Someone visited your webpage. IP address, Time/Date the incident occurred, Reverse DNS lookup, and useragent are as follows: " .$remoteIpAddress .$E .$Date .$hostname .$F .$useragent;
// send the message
mail($yourEmailAddress, $emailSubject, $emailContent);
?>
</body>
