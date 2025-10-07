<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="NEWS.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
              <br />
              <br />
              <asp:Button ID="ac" runat="server" OnClick="ac_Click" Text="ACCOUNTS" PostBackUrl="~/Accounts.aspx" />
              <br />
              <br />
        </div>


        <div>
            <asp:Button ID="Button2" runat="server" Text="Hiển thị dữ liệu " OnClick="Button2_Click" />
            <br />
            <asp:Button ID="ADD" runat="server" OnClick="ADD_Click" Text="THÊM" BackColor="#9999FF" Height="33px" />
            <br />
            <asp:ImageButton ID="ImageEdit" runat="server" Height="46px" ImageUrl="~/image/icons8-fix-20.png" OnClick="ImageEdit_Click" Width="53px" />
            <br />
            <asp:ImageButton ID="ImageDelete" runat="server" Height="42px" ImageUrl="~/image/icons8-delete-20.png" OnClick="ImageDelete_Click" Width="54px" />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Lấy dữ liệu từ ID" />
            <br />
            <br />
            <asp:Label ID="lblTB" runat="server"></asp:Label>
            <br />
            <asp:Label ID="Label1" runat="server" Text="Nhập để sửa,xóa"></asp:Label>
            <p>
            <asp:TextBox ID="txtID" runat="server" Height="26px" OnTextChanged="TextBox1_TextChanged" style="margin-top: 3px" Width="186px"></asp:TextBox>
            </p>
            <p>
                <asp:Label ID="Label2" runat="server" Text="Title:"></asp:Label>
                     &nbsp;<asp:TextBox ID="txttl" runat="server"></asp:TextBox>
            </p>
            <p>
                <asp:Label ID="Label3" runat="server" Text="Sumary:"></asp:Label>
                    &nbsp;<asp:TextBox ID="txtsm" runat="server"></asp:TextBox>
            </p>
            <p>
                <asp:Label ID="Label4" runat="server" Text="Contents:"></asp:Label>
                <asp:TextBox ID="txtct" runat="server"></asp:TextBox>
            </p>
            <p>
                &nbsp;</p>
            <p>
                &nbsp;</p>
        </div>
            
    </form>
</body>
</html>
