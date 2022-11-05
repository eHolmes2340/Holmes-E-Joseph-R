/*
Project     : a05
File        : gameStartingPage.aspx.cs
Programmer  : Erik Holmes, Richie Joesph
Date        : October 26
Description : This file will contain all the code behind for the game starting page
*/
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Holmes_E_Joseph_R
{
    public partial class WebForm1 : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {
           
        }


        //Function   : submitName_Click
        //Parameter  : object sender, EventArgs e
        //Returns    : void
        //Description: This function will send a session with the name to the next page
        protected void submitName_Click(object sender, EventArgs e)
        {
            string nameEnteredByUser = nameEntered.Text;

            Session["name"] = nameEnteredByUser;
            Response.Redirect("enterMaxGuessRange.aspx");

        }

    }
}