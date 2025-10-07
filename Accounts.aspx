<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Accounts.aspx.cs" Inherits="NEWS.Accounts" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table border="1">
                <thead>
                    <tr>
                        <th>username</th>
                        <th>Password</th>
                        <th>Fullname</th>
                        <th>Perision</th>
                        <th>Email</th>
                        <th>Lock</th>
                        <th>Active</th>
                    </tr>
                </thead>
                <tbody id="tb" runat="server">
                </tbody>
            </table>            
            <asp:Label ID="lbTB" runat="server"></asp:Label>
            <br />
            <br />
            <asp:PlaceHolder ID="inputHolder" runat="server"></asp:PlaceHolder>
            <br />
            <br />
            <asp:Button ID="bt_key" runat="server" Text="Khóa Tài Khoản" Width="180px" />
            <br />
            <asp:Button ID="bt_add" runat="server" Text="Thêm Tài Khoản" Width="180px" OnClick="bt_add_Click" />
            <br />
            <asp:Button ID="bt_edit" runat="server" OnClick="bt_edit_Click" Text="Sữa Tài Khoản" Width="180px" />
            <br />
            <asp:Button ID="bt_delete" runat="server" Text="Xóa Tài Khoản" Width="181px" OnClick="bt_delete_Click" />





        </div>
    </form>
</body>
</html>
