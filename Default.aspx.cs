using DataAccess;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Runtime.Remoting.Contexts;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NEWS
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }




        protected void ImageDelete_Click(object sender, ImageClickEventArgs e)
        {
            int pageId;
            if (int.TryParse(txtID.Text, out pageId))
            {
                // Giả sử muốn xóa trang có ID = 742
                if (DeletePage(pageId))
                {
                    lblTB.Text = "Xóa trang thành công!";
                }
                else
                {
                    lblTB.Text = "Không tìm thấy trang cần xóa!";
                }
            }
            Response.Redirect(Request.RawUrl);

        }



        public bool AddPage()
        {
            try
            {
                using (var context = new NEWSDataContext())
                {
                    var newPage = new PageItem
                    {
                        ID_P = context.PageItems.Any()
                                ? context.PageItems.Max(pa => pa.ID_P) + 1: 1,
                        Title = txttl.Text,
                        Sumary = txtsm.Text,
                        Contents = txtct.Text,
                        ID_MN = 1
                        // Gán thêm các thông tin khác nếu cần
                    };

                    context.PageItems.InsertOnSubmit(newPage);
                    context.SubmitChanges();
                }

                return true;
            }
            catch (Exception ex)
            {
                Console.WriteLine("Lỗi: " + ex.Message);
                return false;
            }
        }
        public bool DeletePage(int id)
        {
            try
            {
                using (var context = new NEWSDataContext())
                {
                    var pageToDelete = context.PageItems
                                              .SingleOrDefault(p => p.ID_P == id);
                    if (pageToDelete == null)
                        return false;

                    context.PageItems.DeleteOnSubmit(pageToDelete);
                    context.SubmitChanges();
                }

                return true;
            }
            catch
            {
                // Có thể ghi log lỗi tại đây nếu cần
                return false;
            }
        }
        public bool EditPage(int id)
        {
            try
            {
                using (var context = new NEWSDataContext())
                {
                    var pageToEdit = context.PageItems
                                            .SingleOrDefault(p => p.ID_P == id);

                    if (pageToEdit == null)
                        return false;

                    pageToEdit.Title = txttl.Text;
                    pageToEdit.Sumary = txtsm.Text;
                    pageToEdit.Contents = txtct.Text;
                    // Gán thêm các thông tin khác nếu cần

                    context.SubmitChanges();
                }

                return true;
            }
            catch
            {
                // Có thể ghi log lỗi tại đây nếu cần
                return false;
            }
        }

        protected void textbox_TextChanged(object sender, EventArgs e)
        {

        }

        protected void ADD_Click(object sender, EventArgs e)
        {
            AddPage();
            if (AddPage())
            {
                lblTB.Text = "Thêm trang mới thành công!";
            }
            else
            {
                lblTB.Text = "Thêm trang mới thất bại!";
            }
            Response.Redirect(Request.RawUrl);
        }

        protected void ImageEdit_Click(object sender, ImageClickEventArgs e)
        {
            int pageId;
            if (int.TryParse(txtID.Text, out pageId))
            {
                if (EditPage(pageId))
                {
                    lblTB.Text = "Sửa trang thành công!";
                }
                else
                {
                    lblTB.Text = "Không tìm thấy trang cần sửa!";
                }
            }
            else
            {
                lblTB.Text = "ID không hợp lệ!";
            }
            Response.Redirect(Request.RawUrl);
        }


        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int pageId;
            int.TryParse(txtID.Text, out pageId);
            NEWSDataContext context = new NEWSDataContext();
            var page = context.PageItems.FirstOrDefault(p => p.ID_P == pageId);

            if (page != null)
            {
                txttl.Text = page.Title;
                txtsm.Text = page.Sumary;
                txtct.Text = page.Contents;
            }
            else
            {
                lblTB.Text = "Không tìm thấy bản ghi với ID = " + pageId;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            NEWSDataContext context = new NEWSDataContext();
            // Các id có trong trang
            var pages = from p in context.PageItems
                        orderby p.ID_P
                        select p;

            foreach (PageItem p in pages.ToList())
            {
                Response.Write("<hr/>"); // Ngăn cách giữa các bản ghi
                Response.Write("ID: " + p.ID_P + "<br/>");
                Response.Write("Tiêu đề: " + p.Title + "<br/>");
                Response.Write("Tóm tắt: " + p.Sumary + "<br/>");
                Response.Write("Nội dung: " + p.Contents + "<br/>");
                // Thêm các trường khác nếu có
            }
        }

        protected void ac_Click(object sender, EventArgs e)
        {

        }
    }
}