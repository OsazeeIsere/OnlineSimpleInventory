using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class content : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        top_heading.InnerText = "Online Inventory System";
    }

    protected void change_title_Click(object sender, EventArgs e)
    {
        top_heading.InnerText = "Online Inventory System by Isere Osaze";
    }
}