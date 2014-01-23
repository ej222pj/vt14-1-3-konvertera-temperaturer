﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Konvertera_temp.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="~/Style/Style.css" rel="stylesheet" type="text/css" />
    <title>Konvertera temperaturer</title>
</head>
<body>
    <form id="form1" runat="server">
    <div class="main">
        <h1>Konvertera temperaturer</h1>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" Font-Italic="True" Font-Size="10pt" ForeColor="Red" />
             
            <asp:Label ID="Label1" runat="server" Text="Starttemperatur:" CssClass="labelStyle"></asp:Label>
            <asp:TextBox ID="StartTemp" runat="server" CssClass="textbox"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Fyll i en Starttemperatur" ControlToValidate="StartTemp" Display="Dynamic" Font-Italic="True" Font-Size="10pt" ForeColor="Red" Text="*">*</asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Starttemperaturen måste vara ett heltal" Type="Integer" Operator="DataTypeCheck" ControlToValidate="StartTemp" Display="Dynamic" Font-Italic="True" Font-Size="10pt" ForeColor="Red" Text="*"></asp:CompareValidator>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Starttemperaturen måste vara ett tal mellan 1-100" MaximumValue="100" MinimumValue="1" ControlToValidate="StartTemp" Display="Dynamic" Font-Italic="True" Font-Size="10pt" ForeColor="Red" ClientIDMode="AutoID" Type="Integer" Text="*"></asp:RangeValidator>
        

            <asp:Label ID="Label2" runat="server" Text="Sluttemperatur:" CssClass="labelStyle"></asp:Label>
            <asp:TextBox ID="EndTemp" runat="server" CssClass="textbox"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Fyll i en Sluttemperatur" ControlToValidate="EndTemp" Display="Dynamic" Font-Italic="True" Font-Size="10pt" ForeColor="Red" Text="*"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator2" runat="server" ErrorMessage="Sluttemperaturen måste vara ett heltal" Type="Integer" Operator="DataTypeCheck" ControlToValidate="EndTemp" Display="Dynamic" Font-Italic="True" Font-Size="10pt" ForeColor="Red" Text="*"></asp:CompareValidator>
            <asp:RangeValidator ID="RangeValidator2" runat="server" ErrorMessage="Sluttemperaturen måste vara ett tal mellan 1-100" MaximumValue="100" MinimumValue="1" ControlToValidate="EndTemp" Display="Dynamic" Font-Italic="True" Font-Size="10pt" ForeColor="Red" ClientIDMode="AutoID" Type="Integer" Text="*"></asp:RangeValidator>
        

            <asp:Label ID="Label3" runat="server" Text="Temperatursteg:" CssClass="labelStyle"></asp:Label>
            <asp:TextBox ID="IntervalTemp" runat="server" CssClass="textbox"></asp:TextBox>
        
            <asp:Label ID="Label4" runat="server" Text="Typ av konvertering" CssClass="labelStyle"></asp:Label>
            
            <asp:RadioButton ID="CtoF" runat="server" Text="Celsius till Fahrenheit" CssClass="radio" Font-Size="10" Font-Bold="True" Font-Italic="True" GroupName="Radio" />
            <asp:RadioButton ID="FtoC" runat="server" Text="Fahrenheit till Celsius" CssClass="radio" Font-Size="10" Font-Bold="True" Font-Italic="True" GroupName="Radio" />
       
             
           
            <asp:Button ID="Convert" runat="server" Text="Konvertera" CssClass="button" OnClick="Convert_Click" />
        
    </div>
    </form>
</body>
</html>
