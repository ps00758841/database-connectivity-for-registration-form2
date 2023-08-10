using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using System.Configuration;

namespace Demo2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyCon"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string path;
            if (FileUpload1.HasFile)
                FileUpload1.SaveAs(HttpContext.Current.Request.PhysicalApplicationPath + "image/" + FileUpload1.FileName);
            path = FileUpload1.FileName;
            SqlCommand cmd = new SqlCommand("registration_Insert", con);
            con.Open();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Firstname", TextBox1.Text);
            cmd.Parameters.AddWithValue("@Lastname", TextBox5.Text);
            cmd.Parameters.AddWithValue("@Email", TextBox4.Text);
            cmd.Parameters.AddWithValue("@Address", TextBox8.Text);
            cmd.Parameters.AddWithValue("@Gender", RadioButtonList1.Text);
            cmd.Parameters.AddWithValue("@Password", TextBox2.Text);
            cmd.Parameters.AddWithValue("@ConfirmPassword", TextBox3.Text);
            cmd.Parameters.AddWithValue("@Zip", TextBox7.Text);
            cmd.Parameters.AddWithValue("@State", DropDownList1.Text);
            cmd.Parameters.AddWithValue("@Country", DropDownList2.Text);
            cmd.Parameters.AddWithValue("@Areaofinterest", CheckBox1.Text);
            cmd.Parameters.AddWithValue("@ProfilePicture", path);

            int i = cmd.ExecuteNonQuery();
            con.Close();

            if (i > 0)
            {
                Response.Write("<script> alert('Registered Sucessfully'); </script>");
                //Response.Redirect("login.aspx");
            }
        }

        protected void ButtonReset_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";


         //   Response.Write("<script> alert('Reset Sucessfully'); </script>");
        }
    }
}