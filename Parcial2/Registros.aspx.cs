using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Parcial2
{
    public partial class Registros : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie cookie1 = Request.Cookies["password"];
            string valorLabel = cookie1 != null ? cookie1.Value : "Sin valor";
            Label6.Text = valorLabel;

            if(this.Session["usuario"] != null)
            {

                Label7.Text = Session["usuario"].ToString();
            }


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            if(TextBox4.Text != string.Empty)
            {
                HttpCookie cookie1 = new HttpCookie("password", TextBox4.Text);
                DateTime exp = DateTime.Now.AddSeconds(2);
                cookie1.Expires = exp;
                Response.Cookies.Add(cookie1);
            }
            else
            {
                HttpCookie cookie2 = new HttpCookie("cookieNocreada", "valorCookie");
                Response.Cookies.Add(cookie2);
            }

            this.Session["usuario"] = TextBox1.Text;

            Response.Redirect(Request.RawUrl);


            
            
        }
    }
}