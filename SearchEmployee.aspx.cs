using Oracle.ManagedDataAccess.Client;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SearchEmployee : System.Web.UI.Page
{
    OracleCommand comm;
    string connectionString =
 ConfigurationManager.ConnectionStrings[
 "DorknozzleCS"].ConnectionString;

    OracleConnection conn = new OracleConnection(ConfigurationManager.ConnectionStrings["DorknozzleCS"].
        ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btmSearch_Click(object sender, EventArgs e)
    {
        string employeeName = txtEmpName.Text;

        comm = new OracleCommand("select * from employees where name='"+employeeName+"'", conn);

        

       
       

        try
        {

            conn.Open();

            OracleDataReader reader = comm.ExecuteReader();

            dtlEmployee.DataSource = reader;
            dtlEmployee.DataBind();
        }
        catch (Exception ex)
        {


            Response.Write("<script> alert('error: " + ex.Message + "'); </script>");
        }
        finally
        {

            conn.Close();
        }
    }
}