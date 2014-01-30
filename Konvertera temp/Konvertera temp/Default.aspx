<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Konvertera_temp.Default" ViewStateMode="Disabled" %>             
<!--  Visible="false" på tabellen --> 
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
        <%-- Felmeddelande --%>
            <div><asp:ValidationSummary ID="ValidationSummary1" runat="server" Font-Italic="True" Font-Size="10pt" ForeColor="Red" /></div>

        <%-- Tabellen --%>
            <div><asp:Table ID="Table1" runat="server" CssClass="table" Visible="false"></asp:Table></div>

        <%-- Start --%>
          <div><asp:Label ID="Label1" runat="server" Text="Starttemperatur:" CssClass="labelStyle"></asp:Label></div>
            <div>
                <asp:TextBox ID="StartTemp" runat="server" CssClass="textbox" autofocus="autofocus"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Fyll i en Starttemperatur" ControlToValidate="StartTemp" Display="Dynamic" CssClass="error" Text="*">*</asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Starttemperaturen måste vara ett heltal" Type="Integer" Operator="DataTypeCheck" ControlToValidate="StartTemp" Display="Dynamic" Text="*" CssClass="error"></asp:CompareValidator>
            </div>     
            
        <%-- END --%>
          <div><asp:Label ID="Label2" runat="server" Text="Sluttemperatur:" CssClass="labelStyle"></asp:Label></div>
            <div>
                <asp:TextBox ID="EndTemp" runat="server" CssClass="textbox"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Fyll i en Sluttemperatur" ControlToValidate="EndTemp" Display="Dynamic" CssClass="error" Text="*"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator2" runat="server" ErrorMessage="Sluttemperaturen måste vara ett heltal" Type="Integer" Operator="DataTypeCheck" ControlToValidate="EndTemp"  CssClass="error" Text="*" Display="Dynamic"></asp:CompareValidator>
                    <asp:CompareValidator ID="CompareValidator4" runat="server" ErrorMessage="Sluttemperaturen måste vara högre än starttemperaturen" Type="Integer" Operator="GreaterThan" ControlToValidate="EndTemp" ControlToCompare="StartTemp" CssClass="error" Text="*" Display="Dynamic"></asp:CompareValidator>
            </div>

        <%-- Intervall --%>
          <div><asp:Label ID="Label3" runat="server" Text="Temperatursteg:" CssClass="labelStyle"></asp:Label></div>
            <div>
                <asp:TextBox ID="IntervalTemp" runat="server" CssClass="textbox"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Fyll i ett temperatursteg" ControlToValidate="IntervalTemp"  CssClass="error" ForeColor="Red" Text="*" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator3" runat="server" ErrorMessage="Temperatursteget måste vara ett heltal" Type="Integer" Operator="DataTypeCheck" ControlToValidate="IntervalTemp" Display="Dynamic"  CssClass="error" Text="*"></asp:CompareValidator>
                    <asp:RangeValidator ID="RangeValidator3" runat="server" ErrorMessage="Temperatursteget måste vara ett tal mellan 1-100" MaximumValue="100" MinimumValue="1" ControlToValidate="IntervalTemp" Display="Dynamic"  CssClass="error" ClientIDMode="AutoID" Type="Integer" Text="*"></asp:RangeValidator>
            </div>

        <%-- Typ av konvert --%>
          <div><asp:Label ID="Label4" runat="server" Text="Typ av konvertering" CssClass="labelStyle"></asp:Label></div>       
            <div><asp:RadioButton ID="CtoF" runat="server" Text="Celsius till Fahrenheit" CssClass="radio" GroupName="Radio" Checked="True" /></div>
            <div><asp:RadioButton ID="FtoC" runat="server" Text="Fahrenheit till Celsius" CssClass="radio" GroupName="Radio" /></div>

        <%-- Submit knapp --%>
            <div><asp:Button ID="Convert" runat="server" Text="Konvertera" CssClass="button" OnClick="Convert_Click" /></div>
            
    </div>
    </form>
</body>
</html>
