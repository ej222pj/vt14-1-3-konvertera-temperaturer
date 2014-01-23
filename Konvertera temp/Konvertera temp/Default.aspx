<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Konvertera_temp.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="~/Style/Style.css" rel="stylesheet" type="text/css" />
    <title>Konvertera temperaturer</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <p>Starttemperatur:</p>
        <asp:TextBox ID="TextBox1" runat="server" CssClass="textbox"></asp:TextBox>

        <p>Sluttemperatur:</p>
        <asp:TextBox ID="TextBox2" runat="server" CssClass="textbox"></asp:TextBox>

        <p>Temperatursteg:</p>
        <asp:TextBox ID="TextBox3" runat="server" CssClass="textbox"></asp:TextBox>


        <asp:RadioButton ID="RadioButton1" runat="server" Text="asd" />
        <asp:RadioButton ID="RadioButton2" runat="server" />


    </div>
    </form>
</body>
</html>
