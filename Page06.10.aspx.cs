using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NEWS
{
    public partial class Page06__10 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void cb_nam_CheckedChanged(object sender, EventArgs e)
        {
            cb_nu.Checked = false;
        }

        protected void cb_nu_CheckedChanged1(object sender, EventArgs e)
        {
            cb_nam.Checked = false;

        }

        protected void txt_tdn_TextChanged(object sender, EventArgs e)
        {

        }
        public String cb()
        {
            if (cb_nu.Checked)
            {
                return "Nữ";
            }
            else if(cb_nam.Checked)
            {
                return "Nam";
            }
            else
            {
                return "Lỗi!";
            }
        }
        protected void bt_dk_Click(object sender, EventArgs e)
        {
            lb_TB.Text =
                "Họ và tên khách hàng: " + txt_ht.Text + "<br/>" +
                "Tên đăng nhập: " + txt_tdn.Text + "<br/>" +
                "Mật khẩu: " + Request.Form["txt_mk"].ToString() + "<br/>" +
                "Ngày sinh: " + Request.Form["ngaysinh"].ToString() + "<br/>" +
                "Giới tính: " + cb() + "<br/>" +
                "Email: " + txt_mail.Text + "<br/>" +
                "Địa chỉ: " + lb_dc.Text + "<br/>" +
                "Số điện thoại: " + txt_sdt.Text;
        }

    }
}