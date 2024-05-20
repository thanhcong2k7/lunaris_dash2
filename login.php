<?php
	session_start();
	session_destroy();
	session_start();
	$_SESSION["userwtf"]=5;
	header("Location: ./");
?>