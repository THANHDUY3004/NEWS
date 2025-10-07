<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Page06.10.aspx.cs" Inherits="NEWS.Page06__10" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Page thông tin đăng ký</title>
    <style>
      .auto-style6 td {
        vertical-align: top;
      }
        .auto-style1 {
            height: 24px;
            width: 271px;
        }
        .auto-style2 {
            height: 22px;
        }
        .auto-style3 {
            height: 21px;
        }
        .auto-style4 {
            height: 20px;
        }
        #ngaysinh {
            width: 200px;
        }
        .auto-style5 {
            height: 29px;
        }
        #Password1 {
            width: 200px;
        }
        #Password2 {
            width: 200px;
        }
        #txt_mk {
            width: 200px;
        }
        #txt_nlmk {
            width: 200px;
        }
        body {
            display: flex;
            justify-content: center;  /* canh giữa ngang */
            align-items: center;      /* canh giữa dọc */
            height: 100vh;            /* chiếm toàn màn hình */
            margin: 0;
            background-color: #f8f9fa; /* tuỳ chọn: màu nền nhẹ */
        }
        .auto-style6 {
            height: 28px;
        }
    </style>


    </style>
</head>
<body style="height: 508px">
    <form id="form1" runat="server">
        <div style="height: 369px">
            <table border="1" class="auto-style6">
                <tbody>
                    <tr>
                        <td class="auto-style2">
                            <table style="width: 455px; height: 80px; margin-top: 0px;">
                                <tr>
                                    <td>
                                        <table border="1" style="width:100%;">
                                            <tr>
                                               <th class="auto-style5" style="background-color: #FF66CC">Thông tin đăng nhập</th>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <table style="width:100%;">
                                                        <tr>
                                                            <td class="auto-style3">
                                                                <asp:Label ID="Label2" runat="server" Text="Tên đăng nhập:"></asp:Label>
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="txt_tdn" runat="server" Width="200px" OnTextChanged="txt_tdn_TextChanged"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="auto-style3">
                                                                <asp:Label ID="Label3" runat="server" Text="Mật khẩu:        "></asp:Label>
                                                            </td>
                                                            <td>
                                                                <input id="txt_mk" runat="server" type="password" /></td>
                                                        </tr>
                                                        <tr>
                                                            <td class="auto-style3">
                                                                <asp:Label ID="Label4" runat="server" Text="Nhập lại mật khẩu:"></asp:Label>
                                                            </td>
                                                            <td>
                                                                <input id="txt_nlmk" runat="server" type="password" /></td>
                                                        </tr>
                                                    </table>
                                                    <br />
                                                </td>
                                            </tr>
                                        </table>
                                    </td>

                                </tr>
                                <tr>
                                    <td>
                                        <table border="1" style="width:100%;">
                                            <tr>
                                                <th style="background-color: #FF66CC">Thông tin cá nhân</th>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <table style="width:100%;">
                                                        <tr>
                                                            <td class="auto-style4">
                                                                <asp:Label ID="Label5" runat="server" Text="Họ và tên khách hàng"></asp:Label>
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="txt_ht" runat="server" Width="200px"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="auto-style4">
                                                                <asp:Label ID="Label6" runat="server" Text="Ngày sinh:"></asp:Label>
                                                            </td>
                                                            <td class="auto-style4">
                                                                <input type="date" id="ngaysinh" runat="server" name="ngaysinh">

                                                                &nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="auto-style4">
                                                                <asp:Label ID="Label7" runat="server" Text="Email:"></asp:Label>
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="txt_mail" runat="server" Width="200px"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                         <tr>
                                                             <td class="auto-style4">
                                                                 <asp:Label ID="Label8" runat="server" Text="Giới tính:"></asp:Label>
                                                             </td>
                                                             <td>
                                                                <asp:CheckBox ID="cb_nam" runat="server" Text="Nam" AutoPostBack="True"
                                                                    OnCheckedChanged="cb_nam_CheckedChanged" />

                                                                <asp:CheckBox ID="cb_nu" runat="server" Text="Nữ" AutoPostBack="True"
                                                                    OnCheckedChanged="cb_nu_CheckedChanged1" />
                                                             </td>
                                                         </tr>
                                                        <tr>
                                                            <td class="auto-style4">
                                                                <asp:Label ID="Label9" runat="server" Text="Địa chỉ:"></asp:Label>
                                                            </td>
                                                            <td class="auto-style4">

                                                                <asp:TextBox ID="lb_dc" runat="server" Width="201px"></asp:TextBox>

                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="auto-style4">
                                                                <asp:Label ID="Label10" runat="server" Text="Số điện thoại:"></asp:Label>
                                                            </td>
                                                            <td>

                                                                <asp:TextBox ID="txt_sdt" runat="server" Width="200px"></asp:TextBox>

                                                            </td>
                                                        </tr>
                                                       <tr>
                                                           <td class="auto-style4"></td>
                                                           <td>

                                                               <asp:Button ID="bt_dk" runat="server" OnClick="bt_dk_Click" Text="Đăng Ký" />

                                                           </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                                
                                            </tr>
                                        </table>
                                    </td>

                                </tr>
                            </table>
                        </td>
                        <td class="auto-style1">
                            <table border="1" style="width:100%;">
                                <tr>
                                    <th class="auto-style6" style="background-color: #FF66CC">Hồ sơ khách hàng</th>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="lb_TB" runat="server" Text="Thông tin khách hàng"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </tbody>

                <caption style="height: 44px; font-size: xx-large; color: #FF0000; width: 634px;">Hồ sơ đăng ký<br /></caption>
            </table>
        </div>
    </form>
</body>
</html>
