using System;
using System.IO;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

public partial class Account_Manage : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
    

        if (!this.IsPostBack)
        {
            string constr = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(constr))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter("SELECT * FROM FrontPages where deleted=0", conn))
                {
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                   GridView1.DataSource = dt;
                    GridView1.DataBind();
                }
            }
        }


    }

    protected void OnRowDataBound(object sender, GridViewRowEventArgs e)
    {

     



        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            DataRowView dr = (DataRowView)e.Row.DataItem;

            if (!Convert.IsDBNull(dr["area_image"]))
            {
                //   bytes = (byte[])r["proposalDoc"];
                string imageUrl = "data:image/jpg;base64," + Convert.ToBase64String((byte[])dr["area_image"]);
                (e.Row.FindControl("Image1") as Image).ImageUrl = imageUrl;


            }
        }
    }

    protected void lbtnAdd_Click(object sender, EventArgs e)

    {

        Response.Redirect("Create_Area.aspx");

        // Hide the Add button and showing Add panel. 

       


    }

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
       
    }



    private void BindGridView()
    {
        GridView1.DataBind();
    }





}