﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication4.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
		<title>Coco-WebSite</title>
		<style>
			body { 
				margin: 0px;
				padding: 0px;
				font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif;
				background-color: #000;
				color: #cccccc;
			}
			a:visited, a:active, a:link {
				text-decoration: none;
				color: #cecece;
			}
			a:hover {
				text-decoration: underline;
				color: #dfdfdf;
			}
			#container {
				width: 100%;
				height: 100%;
				position: absolute;
				left: 0px;
				top: 0px;
				z-index: -1;
			}
			#info {
				width: 400px;
				margin-top:120px;
				margin-left:auto;
				margin-right:auto;
				background-color: rgba(180, 180, 180, 0.2);
				padding: 60px;
			}
			#info h3 { 
				font-size: 28px;
				font-weight: lighter;
				line-height: 36px;
				text-shadow: rgba(0, 0, 0, 1) 0px 1px 0px;
			}
			.bigText { 
				font-size: 16px;
				line-height: 24px;			}
		</style>
	</head>
<body>
    <!--<form id="form1" runat="server">
    <div>
    
    </div>
        <asp:TextBox ID="TextBox1" runat="server" style="margin-top: 0px"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </form>-->

    <div id="container"></div>

	<div id="info">
		<h3><a href="https://github.com/dwmkerr/starfield">Starfield</a></h3>
		<span class="bigText">
			<p>Starfield is a very simple javascript class that turns a div into
				a starfield like the one you can see here.</p>
		</span>
		<a href="#" onclick="randomise()">Randomise</a> | <a href="starfield.js" target="blank">starfield.js</a> |
		<a href="https://github.com/dwmkerr/starfield">GitHub</a>
		<p><a href="http://www.dwmkerr.com">Back to dwmkerr.com</a> or <a href="http://www.dwmkerr.com/experiments">back to the 
			experiments page</a>.</p>
	</div>

	<script src="starfield.js"></script>
	<script>
	    var container = document.getElementById('container');
	    var starfield = new Starfield();
	    starfield.initialise(container);
	    starfield.start();

	    function randomise() {
	        starfield.stop();
	        starfield.stars = Math.random() * 1000 + 50;
	        starfield.minVelocity = Math.random() * 30 + 5;
	        starfield.maxVelocity = Math.random() * 50 + starfield.minVelocity;
	        starfield.start();
	    }
	</script>
	<script type="text/javascript">

	    var _gaq = _gaq || [];
	    _gaq.push(['_setAccount', 'UA-41728580-1']);
	    _gaq.push(['_trackPageview']);

	    (function () {
	        var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
	        ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
	        var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
	    })();

</script>
</body>
</html>
