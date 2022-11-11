﻿<!-- 
Project     :  a05
File        : enterMaxGuessRange.aspx
Programmer  : Erik Holmes, Richie Joseph
Date        : Nov 11,2022
Description : In this file the user will enter a max guess range. The max guess range must be greater then 0 and an integer. 
-->
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="enterMaxGuessRange.aspx.cs" Inherits="Holmes_E_Joseph_R.enterMaxGuessRange" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Hi-Low</title>
    <style>
        body{
            text-align:center; 
            background-color:lightgray; 
        }
        h1{
            text-align:center; 
            color:orange; 
        }
    </style>
</head>
<body>
    <h1>Hi-Low</h1>
    <hr />
    <form id="form1" runat="server">
        <div>
            <p id="greetByName" runat="server"></p>
            <asp:RegularExpressionValidator ID='vldNumber' ControlToValidate='maxRange' ErrorMessage='This must be a whole number' ValidationExpression='(^([0-9]*|\d*\d{1}?\d*)$)' Runat='server'  ForeColor="Red">
            </asp:RegularExpressionValidator>
            <br />
            <asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server"
              ControlToValidate="maxRange"
              ErrorMessage="***This text box can not be blank.***"
              ForeColor="Red" >
           </asp:RequiredFieldValidator>   
            <br />
            <asp:TextBox ID="maxRange" runat="server" />
            <br />
            <br />
            <asp:Button runat="server" OnClick="submitMaxRange" Text="Submit" id="maxGuess" />
        </div>
    </form>
</body>
</html>
