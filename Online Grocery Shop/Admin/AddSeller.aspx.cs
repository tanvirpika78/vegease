using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_AddAdmin : System.Web.UI.Page
{
    public static string show = string.Empty;
    DataSet ds;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Admin"] != null)
        {
            if (!IsPostBack)
            {
                ShowMessage();
                this.fillgrid();
            }
        }
        else
        {
            Response.Redirect("~/Admin/Login.aspx");
        }
    }

    protected void gvSeller_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        GridViewRow row = gvSeller.Rows[e.RowIndex];
        Label lblAid = (Label)row.FindControl("lblAid");

        using (SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["GroceryDB"].ConnectionString))
        {
            SqlCommand cmd = new SqlCommand("DELETE FROM Seller WHERE SellerID = @SellerID", cn);
            cmd.Parameters.AddWithValue("@SellerID", lblAid.Text.Trim());

            cn.Open();
            cmd.ExecuteNonQuery();
            cn.Close();
        }

        fillgrid();
        show = "Delete";
        Response.Redirect(Request.RawUrl);
    }

    protected void fillgrid()
    {
        using (SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["GroceryDB"].ConnectionString))
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM Seller", cn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            ds = new DataSet();
            da.Fill(ds);
            gvSeller.DataSource = ds;
            gvSeller.DataBind();
        }
    }

    protected void btnAddSeller_Click(object sender, EventArgs e)
    {
        using (SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["GroceryDB"].ConnectionString))
        {
            SqlCommand cmd0 = new SqlCommand("SELECT CASE WHEN EXISTS (SELECT 1 FROM Seller WHERE SellerName = @SellerName) THEN 1 ELSE 0 END", cn);
            cmd0.Parameters.AddWithValue("@SellerName", txtAuser.Text.Trim());

            cn.Open();
            int i = (int)cmd0.ExecuteScalar();

            if (i == 1)
            {
                show = "Exists";
            }
            else
            {
                SqlCommand cmd = new SqlCommand("INSERT INTO Seller (SellerName, Password) VALUES (@SellerName, @Password)", cn);
                cmd.Parameters.AddWithValue("@SellerName", txtAuser.Text.Trim());
                cmd.Parameters.AddWithValue("@Password", txtApwd.Text.Trim());

                cmd.ExecuteNonQuery();
                show = "Add";
            }
            cn.Close();
        }

        Response.Redirect(Request.RawUrl);
    }

    private void ShowMessage()
    {
        switch (show)
        {
            case "Delete":
                lblMsg.Text = "Seller removed successfully!";
                break;
            case "Add":
                lblMsg.Text = "Seller added successfully!";
                break;
            case "Exists":
                lblMsg.Text = "Seller username already exists!";
                break;
        }
        show = string.Empty;
    }
}
