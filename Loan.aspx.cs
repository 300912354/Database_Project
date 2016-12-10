using Oracle.ManagedDataAccess.Client;
using System.Data;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System;
using System.Data.SqlClient;

public partial class Loan : System.Web.UI.Page
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

    public void Button1_Click(object sender, EventArgs e)
    {//OracleConnection conn;
     //   OracleCommand comm;
     //   string connectionString =
     //ConfigurationManager.ConnectionStrings[
     //"DorknozzleCS"].ConnectionString;

     //   OracleConnection conn = new OracleConnection(ConfigurationManager.ConnectionStrings["DorknozzleCS"].
     //       ConnectionString);

        comm = new OracleCommand("insertLoan", conn);

        comm.CommandType = CommandType.StoredProcedure;

        comm.Parameters.Add("SP_BRANCHID",OracleDbType.Int32);
        comm.Parameters["SP_BRANCHID"].Value=Convert.ToInt32(txtBRANCHID.Text);

        comm.Parameters.Add("SP_LOANTYPE",OracleDbType.Varchar2);
        comm.Parameters["SP_LOANTYPE"].Value = txtLOANTYPE.Text;

        comm.Parameters.Add("SP_AMOUNT", OracleDbType.Int32);
        comm.Parameters["SP_AMOUNT"].Value =txtAMOUNT.Text;

        comm.Parameters.Add("SP_RATE", OracleDbType.Decimal);
        comm.Parameters["SP_RATE"].Value =txtRATE.Text;

        comm.Parameters.Add("SP_CUSTOMERID",OracleDbType.Int32);
        comm.Parameters["SP_CUSTOMERID"].Value = Convert.ToInt32(txtCUSTOMERID.Text);

        comm.Parameters.Add("SP_PERIOD", OracleDbType.Int32);
        comm.Parameters["SP_PERIOD"].Value = Convert.ToInt32(txtPERIOD.Text);

        try
        {

            conn.Open();

            comm.ExecuteNonQuery();

            Response.Redirect("Loan.aspx");
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

    //protected void Button1_Click1(object sender, EventArgs e)
    //{

    //}

    protected void Button3_Click(object sender, EventArgs e)
    {

        using (var conn = new OracleConnection(ConfigurationManager.ConnectionStrings["DorknozzleCS"].
        ConnectionString))
        using (var cmd = conn.CreateCommand())
        {
            comm = new OracleCommand("calculate_loan", conn);
           
          
            comm.CommandType = CommandType.StoredProcedure;


            comm.Parameters.Add("proc_amount", OracleDbType.Int32);
            comm.Parameters["proc_amount"].Value = TextBox1.Text;

            comm.Parameters.Add("proc_rate", OracleDbType.Int16);
            comm.Parameters["proc_rate"].Value = TextBox2.Text;
                

            comm.Parameters.Add("proc_period", OracleDbType.Int16);
            comm.Parameters["proc_period"].Value = TextBox3.Text;
                


            comm.Parameters.Add("lv_finalpayment", OracleDbType.Int32).Direction = ParameterDirection.Output;


            try
            {
              conn.Open();

                OracleDataReader reader = comm.ExecuteReader();
                outpuTextFeiled.Text= ""+comm.Parameters["lv_finalpayment"].Value;
                reader.Close();
            }
            catch (Exception ex)
            {
                Response.Write("<script> alert('error: " + ex.Message + "'); </script>");
            }
            finally
            {
                conn.Close();

            }


         
          

            //using (var dr = cmd.ExecuteReader())
            //{
            //    // do some work here
            //}
        }
    }
}



