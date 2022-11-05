<!-- 
Project     : a05
File        : gameStartingPage.aspx
Programmer  : Erik Holmes, Richie Joseph
Date        : October 27,2022
Description : This file contains the Design side for the gameStarting page
-->


<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="gameStartingPage.aspx.cs" Inherits="Holmes_E_Joseph_R.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Hi-Low Game</title>
    <style>
        body{
            text-align:center;
            background-color:lightgray; 
        }
        h1{
            color:orange;
        }
        #errorMsg{
            color:red; 
        }
    </style>
</head>
<body>
    <form id="assignNameForm" runat="server">
        <div id="startGameDiv">
            <h1>Hi-Low Game</h1>
            <hr />
            <br />
            <p> Please enter your name!</p>
             <asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server"
              ControlToValidate="nameEntered"
              ErrorMessage="***The name can not be blank.***"
              ForeColor="Red">
           </asp:RequiredFieldValidator>    
            <br />
            <asp:Label runat="server">Name:</asp:Label>
            <asp:TextBox placeholder="name" id="nameEntered" runat="server"/><br />
            <br />
            <asp:Button id="submitName" runat="server" Text="Submit Name" OnClick="submitName_Click" />
        </div>
    </form>
</body>
</html>
