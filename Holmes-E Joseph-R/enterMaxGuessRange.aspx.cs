using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Holmes_E_Joseph_R
{
    public partial class enterMaxGuessRange : System.Web.UI.Page
    {
       public string name { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            name = Session["name"].ToString(); 
            
            
        }
    }
}