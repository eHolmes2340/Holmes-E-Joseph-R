/*
Project     : a05
File        : enterMaxGuessRange.aspx.cs
Programmer  : Erik Holmes, Richie Joseph
Date        : Nov 4, 2022
Description : This file will contain all the code behind for the enterMaxGuessRange
*/
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Holmes_E_Joseph_R
{
    public partial class enterMaxGuessRange : System.Web.UI.Page
    {
       public string name { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            //Grab the name using session. 
            name = Session["name"].ToString();
            greetByName.InnerText = "Welcome " + name + ", please enter a number for the max guess"; 
            
        }


        //Function   : submitMaxRange
        //Parameter  : object sender, EventArgs e
        //Returns    : void 
        //Description: This function will submit the maxGuessRange and set the random number
        protected void submitMaxRange(object sender, EventArgs e)
        { 
           
            const int lowRange = 1;
            Random r = new Random();
            int maxNum = Int32.Parse(maxRange.Text);
            
            string maxNumToString=maxNum.ToString();
            string nameBeingSent = name;

            int random = r.Next(lowRange, maxNum);
            string randomNumToString =r.ToString();

            /* Items sending to the next page
            * name
            * maxGuess range
            * random num
            */

            Session["nameTo"]=nameBeingSent.ToString();
            Session["randomNum"] = randomNumToString.ToString();
            Session["maxNum"] = maxNumToString.ToString();
            Response.Redirect("guessPage.aspx");


        }
    }
}