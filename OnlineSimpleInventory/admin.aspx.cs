using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    settings x = new settings();
    protected void Button1_Click(object sender, EventArgs e)
    {
       try
            {

                if (string.IsNullOrEmpty(txtadminname.Text))
                {
                    msg.Text="Please Enter Your User Name";
                }
                else if (string.IsNullOrEmpty(txtadminpassword.Text))
                {
                msg.Text = "Please Enter Your Password";
                }
                else
                {
                    System.Data.DataTable dtgetadmin = new System.Data.DataTable();
                    dtgetadmin =x. getdatabase("select * from administrator");
                    for (var i = 0; i < dtgetadmin.Rows.Count; i++)
                    {
                        if (txtadminname.Text.ToUpper() == Convert.ToString(dtgetadmin.Rows[i]["adminname"]).ToUpper() && txtadminpassword.Text == (dtgetadmin.Rows[i]["adminpassword"]).ToString())
                        {
                        Response.Redirect("ManageUsers.aspx");
                         
                        }
                        else
                        {
                        msg.Text = "Please Examine Your Entry carefully or look for the ADMINISTRATOR";
                        }
                    }
                }
                txtadminname.Text = "";
                txtadminpassword.Text = "";


               
                //breake1:;
            }
            catch (Exception ex)
            {
            msg.Text = ex.ToString();
            }
           
    }
}