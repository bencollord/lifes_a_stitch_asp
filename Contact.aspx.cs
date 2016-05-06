using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Web.Configuration;
using System.Data;
using System.Data.SqlClient;



public partial class Contact : System.Web.UI.Page
{
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (IsValid)
        {
            Configuration webConfig = WebConfigurationManager.OpenWebConfiguration("~/");
            string connectionString = webConfig.ConnectionStrings.ConnectionStrings["Lifes_a_StitchConnectionString"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connectionString))
            using (SqlCommand cmd = new SqlCommand("sp_LogMessage", conn))
            {
                conn.Open();

                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Name", txtName.Text);
                cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
                cmd.Parameters.AddWithValue("@Message", txtMessage.InnerText);

                try
                {
                    cmd.ExecuteNonQuery();
                    lblSentStatus.CssClass = "isValid";
                    lblSentStatus.Text = "Message sent successfully!";
                }
                catch
                {
                    lblSentStatus.CssClass = "isNotValid";
                    lblSentStatus.Text = "Error sending message";
                }
                finally
                {
                    lblSentStatus.Visible = true;
                }
            }
        } 
    }
}