/*
Project     : a05
File        : guessPage.aspx.cs
Programmer  : Erik Holmes, Richie Joesph
Date        : Nov 12, 2022
Description : This file will contain all the code behind for the guessPage. 
*/
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Holmes_E_Joseph_R
{
    public partial class guessPage : System.Web.UI.Page
    {
        //Items being sent using session
        public string name { get; set; }
        public string maxRange { get; set; }
        public string randomNum { get; set; }

        //for conversion
        public int maxRangeInt { get; set; }
        public int randomNumInt { get; set; }  

        protected void Page_Load(object sender, EventArgs e)
        {
            randomNum = Session["randomNum"].ToString();
            name = Session["nameToGuessPage"].ToString();
            maxRange = Session["maxNum"].ToString();
            
            //Covert string to Int
            maxRangeInt = Int32.Parse(maxRange);
            randomNumInt = Int32.Parse(randomNum);
        }

        //Function   : makeGuess
        //Parameter  : object sender, EventArgs e
        //Returns    : void
        //Description: This function is an on click event for the make guess page 
        protected void makeGuess(object sender, EventArgs e)
        {

        }
    }
}