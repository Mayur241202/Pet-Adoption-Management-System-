<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Congratulations!</title>

<style>
body {
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-image: url('background3.jpg');
     background-position: center center;
     background-repeat: repeat;
}

.container {
  position: relative;
  width: 60vw;
  height: 80vh;
  overflow: hidden;
  text-align : center;
  background-color:white;
  margin-left:260px;
  margin-top:50px;
}

.back-btn {
	background-color: #007bff;
	color: #fff;
	border: none;
	padding: 10px 20px;
	border-radius: 5px;
	text-decoration: none;
	cursor: pointer;
}

.container img{
	margin-top: 50px;
}

</style>

</head>
<body>
	<div class="container">
		<img src="tick.jpeg">
		<h1>Congratulations! You Successfully Adopted a Pet!</h1>
		<p>
			<a href="index2.jsp" class="back-btn">Back to Home</a>
		</p>
	</div>
</body>
</html>