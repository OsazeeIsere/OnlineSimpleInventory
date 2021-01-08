using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ManageUsers : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            MySqlConnection cn = new MySqlConnection();
            MySqlDataAdapter ad = new MySqlDataAdapter();
            MySqlCommand cm = new MySqlCommand();
            System.Data.DataTable dtgetbackup = new System.Data.DataTable();
            string strconnection = "";
            strconnection = "server= localhost;port=3306;database=edp;uid=root;pwd=prayer";
            cn.ConnectionString = strconnection;
            cn.Open();
            // dtgetbackup = x.getdatabase("Select * From staff");
            if (string.IsNullOrEmpty(txtusername.Text))
            {
                msg.Text = "Please Enter Your User Name";
            }
            else if (string.IsNullOrEmpty(txtuserpassword.Text))
            {
                msg.Text = "Please Enter Your Password";
            }
            else if (txtuserpassword.Text != txtuserpassword1.Text)
            {
                msg.Text="Please there is PASSWORD MISMATCH";
                //the next code ensure that backup is not more than 2
            }
            else
            {
                cm.CommandText = "Insert Into staff(staffname,staffpassword) Values('" + txtusername.Text + "','" + txtuserpassword.Text + "')";
                cm.Connection = cn;
                cm.ExecuteNonQuery();
                cn.Close();
                msg.Text = "The User is Registered";
                txtusername.Text = "";
                txtuserpassword.Text = "";
                txtuserpassword1.Text = "";
            }
            txtusername.Text = "";
            txtuserpassword.Text = "";
            txtuserpassword1.Text = "";
        }
        catch (Exception ex)
        {
            msg.Text=ex.ToString();
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {

    }
}