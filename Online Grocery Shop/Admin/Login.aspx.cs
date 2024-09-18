using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Login : System.Web.UI.Page
{
    protected void btnAdlogin_Click(object sender, EventArgs e)
    {
        string connectionString = ConfigurationManager.ConnectionStrings["GroceryDB"].ConnectionString;
        string username = txtUnameAd.Text.Trim();
        string password = txtPassAd.Text.Trim();

        try
        {
            using (SqlConnection cn = new SqlConnection(connectionString))
            {
                cn.Open();
                if (AuthenticateUser(cn, "AdminUsers", "UserName", username, password))
                {
                    Session["Admin"] = username;
                    Response.Redirect("~/Admin/ManageProducts.aspx");
                }
                else if (AuthenticateUser(cn, "Login", "UserEmail", username, password))
                {
                    Session["User"] = username;
                    Response.Redirect("~/Products.aspx");
                }
                else if (AuthenticateUser(cn, "Seller", "SellerName", username, password))
                {
                    Session["Seller"] = username; // Correct session key for seller
                    Response.Redirect("~/Seller/ManageProducts.aspx"); // Correct redirection for seller
                }
                else
                {
                    spnmsg.Visible = true;
                }
            }
        }
        catch (Exception ex)
        {
            spnmsg.InnerHtml = "Error: " + ex.Message;
            spnmsg.Visible = true;
        }
    }


    private bool AuthenticateUser(SqlConnection connection, string tableName, string userColumn, string username, string password)
    {
        string query = String.Format("SELECT 1 FROM [{0}] WHERE {1} = @username AND Password = @password", tableName, userColumn);
        using (SqlCommand cmd = new SqlCommand(query, connection))
        {
            cmd.Parameters.AddWithValue("@username", username);
            cmd.Parameters.AddWithValue("@password", password);

            using (SqlDataReader dr = cmd.ExecuteReader())
            {
                return dr.HasRows;
            }
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Home.aspx");
    }
}
