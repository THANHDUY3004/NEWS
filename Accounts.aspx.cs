using DataAccess;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace NEWS
{
    public partial class Accounts : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            NEWSDataContext context = new NEWSDataContext();

            // <!-- Truy vấn tất cả người dùng từ bảng Users, sắp xếp theo Username -->
            var users = from u in context.Accounts
                        orderby u.Username
                        select u;

            // <!-- Duyệt qua từng bản ghi và tạo dòng HTML tương ứng -->
            foreach (var user in users)
            {
                HtmlTableRow row = new HtmlTableRow(); // <!-- Tạo dòng mới -->

                // <!-- Tạo từng ô dữ liệu và thêm vào dòng -->
                row.Cells.Add(CreateCell(user.Username));
                row.Cells.Add(CreateCell(user.Password));
                row.Cells.Add(CreateCell(user.Fullname));
                row.Cells.Add(CreateCell(user.Permission));
                row.Cells.Add(CreateCell(user.Email));
                row.Cells.Add(CreateCell(user.Lock.ToString()));
                row.Cells.Add(CreateCell(user.Active.ToString()));

                // <!-- Thêm dòng vào phần thân bảng HTML -->
                tb.Controls.Add(row);


            }
        }
        private HtmlTableCell CreateCell(string text)
        {
            HtmlTableCell cell = new HtmlTableCell();
            cell.InnerText = text;
            return cell;
        }



        protected void bt_edit_Click(object sender, EventArgs e)
        {

        }

        protected void bt_add_Click(object sender, EventArgs e)
        {

        }
        protected void bt_delete_Click(object sender, EventArgs e)
        {

        }
    }
}