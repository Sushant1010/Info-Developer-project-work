using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using BLL.Entity;

namespace WebApplication8
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadGrid();
            }
        }

        private void LoadGrid()
        {
            List<UserDetails> lst = blu.GetAllUser();
            GridView1.DataSource = lst;
            GridView1.DataBind();
        }

        BLLUser blu = new BLLUser();
        protected void btnSave_Click(object sender, EventArgs e)
        {
            List<UserDetails> lstuser = blu.GetAllUser().Where(u => u.Username == txtUsername.Text).ToList();
            if (lstuser.Count > 0)
            {
                lblMessage.Text = "Username Already Taken";
                lblMessage.ForeColor = Color.Red;
            }
            else
            {
                UserDetails ud = new UserDetails();
                ud.Username = txtUsername.Text;
                ud.Password = txtPassword.Text;
                ud.Usertype = ddlUsertype.Text;
                ud.Fullname = txtFullname.Text;
                int i = blu.CreateUser(ud);
                if (i > 0)
                {
                    LoadGrid();
                    lblMessage.Text = "User Created";

                }
            }

        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            UserDetails ud = new UserDetails();
            ud.Username = txtUsername.Text;
            ud.Password = txtPassword.Text;
            ud.Usertype = ddlUsertype.Text;
            ud.Fullname = txtFullname.Text;
            ud.UserId = Convert.ToInt32(HiddenField1.Value);
            int i = blu.UpdateUser(ud);
            if (i > 0)
            {
                LoadGrid();
                lblMessage.Text = "User Updated";

            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            int i = blu.DeleteUser(Convert.ToInt32(HiddenField1.Value));
            if (i > 0)
            {
                LoadGrid();
                lblMessage.Text = "User Deleted";

            }

        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            HiddenField1.Value = GridView1.SelectedRow.Cells[1].Text.ToString();
            txtUsername.Text = GridView1.SelectedRow.Cells[2].Text.ToString();
            txtPassword.Text = GridView1.SelectedRow.Cells[3].Text.ToString();

            ddlUsertype.Text = GridView1.SelectedRow.Cells[4].Text.ToString();
            txtFullname.Text = GridView1.SelectedRow.Cells[5].Text.ToString();
        }

      
    }
}