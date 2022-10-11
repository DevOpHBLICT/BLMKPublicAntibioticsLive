using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

public partial class Account_Manage : System.Web.UI.Page
{

   


        protected void Page_Load(object sender, EventArgs e)
    {

        if (!Page.IsPostBack)
        {

            ViewState["ReferringURL"] = Request.ServerVariables["HTTP_REFERER"];

            string constr = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;

            var id = Request.Params["id"];

            using (SqlConnection conn = new SqlConnection(constr))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter(
                 "select * from Areas a where id ='" + id + "'", conn))
                {
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    GridView2.DataSource = dt;
                    GridView2.DataBind();
                }
            }


            var sql = "SELECT* FROM[ToDoItems] t,Areas a where a.ID = t.Area_ID and t.Deleted = 0";


            sql = sql + " and a.id='" + id + "'";
            using (SqlConnection conn = new SqlConnection(constr))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter(sql, conn))
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


    protected void Cancel_Click(object sender, EventArgs e)
    {

 
            Response.Redirect("Areas.aspx");



    }

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            System.Data.DataRowView drv = e.Row.DataItem as System.Data.DataRowView;
            e.Row.Attributes.Add("onclick", String.Format("window.location='View_Infection.aspx?id={0}'", drv["id"]));
        }
    }


}