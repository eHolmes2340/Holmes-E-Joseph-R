<!-- 
Project     : a05
File        : guessPage.aspx
Programmer  : Erik Holmes,Richie
Date        : Nov 10,2022
Description : This page will contains the structure for the guess page. 
-->
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="guessPage.aspx.cs" Inherits="Holmes_E_Joseph_R.guessPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Hi-low Guess</title>
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
     <h1>Hi-Low</h1>
      <hr />
    <form id="form1" runat="server">
        <div>
            <p id="promptUser">Please enter a guess</p>
            <p id="printRange" runat="server" />

            <asp:RegularExpressionValidator ID='vldNumber' ControlToValidate='guess'
                ErrorMessage='This must be a whole number' ValidationExpression='(^\d+$)' 
                Runat='server'  ForeColor="Red">
            </asp:RegularExpressionValidator><br />
            <asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server"
              ControlToValidate="guess"
              ErrorMessage="***This text box can not be blank.***"
              ForeColor="Red" >
           </asp:RequiredFieldValidator><br />   
            <asp:TextBox runat="server" ID="guessEntered" placeHolder="guess" />
            <br />
            <asp:Button runat="server" Text="Make Guess" OnClick="makeGuess" /> 
        </div>
    </form>
</body>
</html>
