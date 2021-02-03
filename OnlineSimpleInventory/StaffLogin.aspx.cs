using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class StaffLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Control c = this.Master.FindControl("shArea");
        c.Visible = false;

    }
    settings x = new settings();
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {

            if (string.IsNullOrEmpty(txtusername.Text))
            {
                msg.Text = "Please Enter Your User Name";
            }
            else if (string.IsNullOrEmpty(txtuserpassword.Text))
            {
                msg.Text = "Please Enter Your Password";
            }
            else
            {
                System.Data.DataTable dtgetadmin = new System.Data.DataTable();
                dtgetadmin = x.getdatabase("select * from staff");
                for (var i = 0; i < dtgetadmin.Rows.Count; i++)
                {
                    if (txtusername.Text.ToUpper() == Convert.ToString(dtgetadmin.Rows[i]["staffname"]).ToUpper() && txtuserpassword.Text == (dtgetadmin.Rows[i]["staffpassword"]).ToString())
                    {
                        Session["userName"] = txtusername.Text;
                        
                        Response.Redirect("ManageStock.aspx");
                    }
                    else
                    {
                        msg.Text = "Please Examine Your Entry carefully!";
                    }
                }
            }
            txtusername.Text = "";
            txtuserpassword.Text = "";

        }
        catch (Exception ex)
        {
            msg.Text = ex.ToString();
        }

    }
}