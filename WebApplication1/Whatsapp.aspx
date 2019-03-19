<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Whatsapp.aspx.cs" Inherits="WebApplication1.Whatsapp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
	<head runat="server">
        <title></title>
		<!-- Imported Material Icon -->
		<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
		
		<!-- Imported Roboto Font -->
		<link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet" />

        <link href="Content/style-grid.css" rel="stylesheet" />
		<!-- External Stylesheet -->		
	</head>
<body>
    <form id="form1" runat="server">
        <header>
			<div>WhatsApp</div>
			<i class="material-icons">search</i>
			<i class="material-icons">more_vert</i>
		</header>
		<nav>
			<i class="material-icons">camera_alt</i>
			<div class="active">CHATS</div>
			<div>STATUS</div>
			<div>CALLS</div>
		</nav>
		<section>
			<img src="http://lorempixel.com/60/60/" class="avator">
			<div class="cname">Angular Group</div>
			<div class="cmsg">https://angular.io/tutorial</div>
			<div class="time-stamp">07:04</div>
		</section>
		<section>
			<img src="http://lorempixel.com/60/60/" class="avator">
			<div class="cname">Bootstrap Group</div>
			<div class="cmsg">https://getbootstrap.com</div>
			<div class="time-stamp">19:20</div>
		</section>
		<footer>
			<i class="material-icons">message</i>
		</footer>
    </form>
</body>
</html>


