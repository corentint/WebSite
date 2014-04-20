<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication4.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Coco-WebSite</title>
    <style>
        #container
        {
            width: 100%;
            height: 100%;
            position: absolute;
            left: 0px;
            top: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="container">
    <script src="starfield.js"></script>

        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        <br />
        <br />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click1" Text="Link to Javascript page" />

    </div>
    </form>
</body>
</html>
