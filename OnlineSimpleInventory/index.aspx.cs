using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }



    protected void btnadmin_Click1(object sender, EventArgs e)
    {
        settings obsettings = new settings();
        System.Data.DataTable dtgetadmins = new System.Data.DataTable();
        dtgetadmins = obsettings.getdatabase("Select * From administrator;");

        if (dtgetadmins.Rows.Count > 0)
        {
            //ddladmins.Items.Clear();
            ListItem litem = new ListItem();
            for (int i = 0; i < dtgetadmins.Rows.Count; i++)
            {
                string stradminname = dtgetadmins.Rows[i]["adminname"].ToString();
                litem = new ListItem();
                litem.Value = stradminname;
                litem.Text = stradminname;
                //ddladmins.Items.Add(litem);
            }
        }
    }

    protected void btnstaffpage_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/StaffLogin.aspx");
    }
}