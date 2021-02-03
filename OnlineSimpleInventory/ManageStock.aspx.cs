using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ManageStock : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        Control c = this.Master.FindControl("shArea");
        c.Visible = true;
    }
}