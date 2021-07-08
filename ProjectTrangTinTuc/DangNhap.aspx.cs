using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectTrangTinTuc
{
    public partial class DangNhap : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();

            try
            {
                string strSelect = "SELECT * FROM tblUser WHERE username='" + txtUsername.Text + "' AND  password= '" + txtPassword.Text + "'";
                dt = (new DataProvider()).excuteQuery(strSelect);

                if (dt.Rows.Count > 0)
                {
                    //login thanh cong
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Login Successfully!');location.href='AdminSite.aspx';", true);
                  
                }
                else
                {
                    //login that bai
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Login Fail!');location.href='DangNhap.aspx';", true);
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("Login error: " + ex.Message);
            }
        }
    }
}