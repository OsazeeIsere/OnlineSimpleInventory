using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data;
using MySql.Data.MySqlClient;

/// <summary>
/// Summary description for settings
/// </summary>
public class settings
{
    public settings()
    {
        //
        // TODO: Add constructor logic here

        //
        
        
    }

    public System.Data.DataTable getdatabase(string strcommand)
    {
        System.Data.DataTable tempgetdatabase = null;
        tempgetdatabase = new System.Data.DataTable();
        MySqlConnection cn = new MySqlConnection();
        MySqlDataAdapter ad = new MySqlDataAdapter();
        MySqlCommand cm = new MySqlCommand();
        string strconnection = "";
        strconnection = "Server=localhost;Port=3306;Database=edp;Uid=root;Pwd=prayer;";
        cn.ConnectionString = strconnection;
        cn.Open();
        cm.CommandText = strcommand;
        ad.SelectCommand = cm;
        cm.Connection = cn;
        System.Data.DataTable dt = new System.Data.DataTable();
        ad.Fill(dt);
        tempgetdatabase = dt;
        cn.Close();
        return tempgetdatabase;
    }
    public System.Data.DataSet getdataset(string strcommand)
    {
        System.Data.DataSet tempgetdatabase = null;
        tempgetdatabase = new System.Data.DataSet();
        MySqlConnection cn = new MySqlConnection();
        MySqlDataAdapter ad = new MySqlDataAdapter();
        MySqlCommand cm = new MySqlCommand();
        string strconnection = "";
        strconnection = "Server=localhost;Port=3306;Database=edp;Uid=root;Pwd=prayer;";
        cn.ConnectionString = strconnection;
        cn.Open();
        cm.CommandText = strcommand;
        ad.SelectCommand = cm;
        cm.Connection = cn;
        System.Data.DataSet dt = new System.Data.DataSet();
        ad.Fill(dt);
        tempgetdatabase = dt;
        cn.Close();
        return tempgetdatabase;
    }

    public void addData(string sqlStatement)
    {
        string strconnection = "Server=localhost;Port=3306;Database=edp;Uid=root;Pwd=prayer;";
        MySqlConnection cn = new MySqlConnection();
        cn.ConnectionString = strconnection;
        cn.Open();

        MySqlCommand cm = new MySqlCommand();

        MySqlDataAdapter ad = new MySqlDataAdapter();

        cm.Connection = cn;
        cm.CommandText = sqlStatement;

        cm.ExecuteNonQuery();

        cn.Close();


    }
   
}