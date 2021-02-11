using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ManageStock : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {

            Control c = this.Master.FindControl("shArea");
            c.Visible = true;
            BindData();
            GridviewBindData();
            MultiView1.ActiveViewIndex = 1;
        }
    }
    private void BindData()
    {

        try
        {
            settings x = new settings();

        DataSet dSet = x.getdataset("Select * from product");
        lsvitems.DataSource = dSet;
        lsvitems.DataBind();
        }
        catch (Exception ex)
        {

            msg.Text = ex.ToString();

        }
    }
    private void GridviewBindData()
    {

        try
        {
            settings x = new settings();

            DataSet dSet1 = x.getdataset("Select productid,productname,section,quantity,retail,expirydate,entrydate from product");
            GridView1.DataSource = dSet1;
            GridView1.DataBind();
        }
        catch (Exception ex)
        {

            msg.Text = ex.ToString();

        }
    }
    public void load_Stock()
    {
            //inside form load event
            //send the width and height of the screen you designed the form for
            //hp elitebook resolution 1600x900 Dimensions1 (w x d x h) (at front)
            //  33.8 x 23.1 x 3.4 cm(13.31 x 9.11 x 1.34 in)
            // size from online method: 788,1280
            //u.fitFormToScreen(this, 1600, 900);
            //this.CenterToScreen();
            //       lbtel.Text = dtidentity.Rows[0]["telephone"].ToString();
            
            //System.Data.DataTable dtgetproduct = new System.Data.DataTable();
            //dtgetproduct = x.getdatabase("Select * from product");
            //if (dtgetproduct.Rows.Count > 0)
            //{
                
            //    //txttotal.Text = dtgetproduct.Rows.Count.ToString();

            //}
            ////  txtcode.Focus();
       
    }

    protected void lsvitems_ItemUpdating(object sender, ListViewUpdateEventArgs e)
    {

    }

    protected void lsvitems_ItemDeleting(object sender, ListViewDeleteEventArgs e)
    {

    }

    protected void lsvitems_ItemEditing(object sender, ListViewEditEventArgs e)
    {

    }

    protected void lsvitems_ItemInserting(object sender, ListViewInsertEventArgs e)
    {

    }

    protected void lsvitems_ItemCanceling(object sender, ListViewCancelEventArgs e)
    {

    }

    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        GridviewBindData();

    }
}