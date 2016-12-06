using Oracle.ManagedDataAccess.Client;
using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    //protected void Button1_Click(object sender, EventArgs e)
    //{
    //    //OracleConnection conn;
    //    OracleCommand comm;
    //    // Read the connection string from Web.config
    //    string connectionString =
    //        ConfigurationManager.ConnectionStrings[
    //        "DorknozzleCS"].ConnectionString;
    //    // Initialize connection
    //    OracleConnection conn = new OracleConnection(ConfigurationManager.ConnectionStrings["DorknozzleCS"].ConnectionString);
    //    // Create command 
    //    comm = new OracleCommand("insertemployeeprocedure", conn);
    //    // Specify we're calling a stored procedure
    //    comm.CommandType = System.Data.CommandType.StoredProcedure;
    //    // Add command parameters
    //    comm.Parameters.Add("@lname", System.Data.SqlDbType.VarChar);
    //    comm.Parameters["@lname"].Value = txtLastName.Text;

    //    comm.Parameters.Add("@fname", System.Data.SqlDbType.VarChar);
    //    comm.Parameters["@fname"].Value = txtFirstMidName.Text;

    //    comm.Parameters.Add("@enrolldate", System.Data.SqlDbType.Date);
    //    comm.Parameters["@enrolldate"].Value = txtEnrollmentDate.Text;
    //    //Label1.Text = "values are inserted";
    //    // Enclose database code in Try-Catch-Finally
    //    try
    //    {
    //        // Open the connection
    //        conn.Open();
    //        // Execute the command
    //        comm.ExecuteNonQuery();
    //        // Reload page if the query executed successfully
    //        Response.Redirect("HomePage.aspx");
    //    }
    //    catch (Exception ex)
    //    {
    //        // Display error message
    //        //dbErrorMessage.Text =
    //        //  "Error submitting the help desk request! Please " +
    //        // "try again later, and/or change the entered data!";

    //        Response.Write("<script> alert('error: " + ex.Message + "'); </script>");
    //    }
    //    finally
    //    {
    //        // Close the connection
    //        conn.Close();
    //    }
    //}
}

    

