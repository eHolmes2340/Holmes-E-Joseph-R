<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="guessPage.aspx.cs" Inherits="Holmes_E_Joseph_R.guessPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style> 
        body{
            text-align:center; 
            background-color:lightgray; 
        }
        h1{
            color:orange; 
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Hi-Low</h1>
            <p id="promptUser">Please enter a guess</p>
            <asp:TextBox runat="server" ID="guess" placeHolder="guess" />
            <asp:Button runat="server" Text="Make Guess" /> 
        </div>
    </form>
</body>
</html>
