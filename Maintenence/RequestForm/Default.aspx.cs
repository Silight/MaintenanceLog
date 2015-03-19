using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Net.Mail;


public partial class Request : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["UserInputConnectionString"].ConnectionString);
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ButtonSubmit_Click(object sender, EventArgs e)
    {
        int workOrder = -1;
        // Inserts form data into the User_Data table
        try
        {
            conn.Open();
            
            string insertQuery = "insert into User_Data (Name, Department, Building, Ext, Urgency, Problem) values (@Name, @Dept, @Build, @Ext, @Urgency, @Problem) SELECT SCOPE_IDENTITY() AS 'ID'";
            SqlCommand com = new SqlCommand(insertQuery, conn);
            
            com.Parameters.AddWithValue("@Name", Name.Text);
            com.Parameters.AddWithValue("@Dept", DropDownDepartment.SelectedItem.ToString());
            com.Parameters.AddWithValue("@Build", DropDownBuilding.SelectedItem.ToString());
            com.Parameters.AddWithValue("@Ext", Ext.Text);
            com.Parameters.AddWithValue("@Urgency", DropDownUrgency.SelectedItem.ToString());
            com.Parameters.AddWithValue("@Problem", Problem.Text);

            SqlDataReader sqlReader = com.ExecuteReader();
            if(sqlReader.HasRows)
            {
                if(sqlReader.Read())
                    workOrder = Convert.ToInt32(sqlReader["ID"].ToString());
            }
        }

        catch(Exception ex)
            {
                Response.Write("Error: " + ex.ToString());
                conn.Close();
                return;
            }
        finally
            {
                conn.Close();
            }
        
        // Send and email to let them know about the request. 
        MailMessage message = new MailMessage();
        SmtpClient client = new SmtpClient(); // change this to reflect your mail client

        try
        {
            client.Port = 587;
            client.Credentials = new System.Net.NetworkCredential();//Enter email and password here. 
            client.EnableSsl = true;

            message.Bcc.Add();//Enter email of person you are sending to here
            
            message.From = new MailAddress(); // Enter email here
            message.Subject = "#" + workOrder + " " + DropDownUrgency.Text + ": " + Name.Text + " has sent a maintenance request";

            message.IsBodyHtml = true;
            
            message.Body = "<center><font size='24' color = #113355><b>WORK ORDER</b></font></center>" +
                "<b>Work Order #: </b>" + workOrder + "<br /><b>" +
                Name.Text + "<br />Ext: </b>" + Ext.Text +
                "<br /><b>Building: </b>" + DropDownBuilding.Text +
                "<br /><b>Department: </b>" + DropDownDepartment.Text +
                "<br /><br /><b>Problem: <br /></b>" + Problem.Text +
                "<br /><br /><i>Do not reply. This is an automated, unmonitored email account. If you recieved this message in error please contact the MIS department directly at ext. 4550.</i>" + 
                "<br /><br /><br /><br /> Completed by:__________ Date:__________" +
                "<br /><br /><b>NOTES: </b>";

            // Send mail
            client.Send(message);

            // Confirm success of request
            string info = "Success";
            string StringVar = string.Empty;
            StringVar = "You have successfully submitted a maintenance request!";
            ClientScript.RegisterStartupScript(this.GetType(), info, "alert('" + StringVar + "');", true);

        }
        catch
        {
            Response.Write("Oops, looks like there was an issue sending the request. Please contact MIS at 4550.");
        }
    }
    protected void reset1_Click(object sender, EventArgs e)
    {
        Response.Redirect(Request.Url.PathAndQuery, true);
    }
}
