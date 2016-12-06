using Oracle.ManagedDataAccess.Client;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Employees : System.Web.UI.Page
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
 
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        //using (OracleConnection objConn = new OracleConnection(ConfigurationManager.ConnectionStrings["DorknozzleCS"].ConnectionString))
        //{
        //    OracleCommand objCmd = new OracleCommand();
        //    objCmd.Connection = objConn;
        //    objCmd.CommandText = "insertemployeeprocedure";
        //    objCmd.CommandType = CommandType.StoredProcedure;
        //    //objCmd.Parameters.Add("", OracleDbType.Int32).Value = TextBox1.Text;//correct textbox name 
        //    //objCmd.Parameters.Add("SP_DEPARTMENTID", OracleDbType.Int32).Value = TextBox3.Text;
        //    objCmd.Parameters.Add(new OracleParameter("SP_DEPARTMENTID", TextBox3.Text));
        //    objCmd.Parameters.Add(new OracleParameter("SP_ADDRESS", TextBox7.Text));
        //    objCmd.Parameters.Add(new OracleParameter("SP_CITY", TextBox8.Text));
        //    objCmd.Parameters.Add(new OracleParameter("SP_STATE", TextBox9.Text));
        //    objCmd.Parameters.Add(new OracleParameter("SP_ZIP", TextBox10.Text));
        //    objCmd.Parameters.Add(new OracleParameter("SP_NAME", TextBox4.Text));

        //objCmd.Parameters.Add("SP_NAME", OracleDbType.Varchar2).Value = TextBox4.Text;
        //objCmd.Parameters.Add("@USERNAME", OracleDbType.Varchar2).Value = TextBox5.Text;
        //objCmd.Parameters.Add("@PASSWORD", OracleDbType.Varchar2).Value = TextBox6.Text;

        //objCmd.Parameters.Add("SP_ADDRESS", OracleDbType.Varchar2).Value = TextBox7.Text;
        //objCmd.Parameters.Add("SP_CITY", OracleDbType.Varchar2).Value = TextBox8.Text;
        //objCmd.Parameters.Add("SP_STATE", OracleDbType.Varchar2).Value = TextBox9.Text;
        //objCmd.Parameters.Add("SP_ZIP", OracleDbType.Varchar2).Value = TextBox10.Text;

        //objCmd.Parameters.Add("@HOMEPHONE", OracleDbType.Varchar2).Value = TextBox11.Text;
        //objCmd.Parameters.Add("@EXTENSION", OracleDbType.Varchar2).Value = TextBox12.Text;
        // objCmd.Parameters.Add("@MOBILEPGONE", OracleDbType.Varchar2).Value = TextBox13.Text;
        comm = new OracleCommand("insertemployeeprocedure", conn);

        comm.CommandType = CommandType.StoredProcedure;

        comm.Parameters.Add("SP_NAME", OracleDbType.Varchar2);
        comm.Parameters["SP_NAME"].Value = TextBox4.Text;

        comm.Parameters.Add("SP_ADDRESS", OracleDbType.Varchar2);
        comm.Parameters["SP_ADDRESS"].Value = TextBox7.Text;

        comm.Parameters.Add("SP_CITY", OracleDbType.Varchar2);
        comm.Parameters["SP_CITY"].Value =TextBox8.Text;

        comm.Parameters.Add("SP_STATE", OracleDbType.Varchar2);
        comm.Parameters["SP_STATE"].Value = TextBox9.Text;

        comm.Parameters.Add("SP_ZIP", OracleDbType.Varchar2);
        comm.Parameters["SP_ZIP"].Value = TextBox10.Text;

        comm.Parameters.Add("SP_DEPARTMENTID", OracleDbType.Int32);
        comm.Parameters["SP_DEPARTMENTID"].Value = Convert.ToInt32(TextBox3.Text);

        try
        {
            conn.Open();
            comm.ExecuteNonQuery();
                Response.Redirect("Employees.aspx");
            }
            catch (Exception ex)
            {
                Response.Write("<script> alert('error: " + ex.Message + "'); </script>");
            }

        conn.Close();
        }

    }



   

 