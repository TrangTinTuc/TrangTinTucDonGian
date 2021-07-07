<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangNhap.aspx.cs" Inherits="ProjectTrangTinTuc.DangNhap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style5 {
            width: 1496px;
            height: 1024px;
            margin-bottom: 0px;
        }

        .auto-style3 {
            height: 391px;
            width: 340px;
        }

        .auto-style6 {
            width: 95%;
        }

        .auto-style9 {
            width: 103px;
            height: 187px;
        }
    
        .auto-style7 {
            width: 271px;
        }

        .auto-style4 {
            width: 80%;
            height: 391px;
        }

        .auto-style8 {
            width: 103%;
            height: 391px;
        }
        .auto-style11 {
            margin-top: 0px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <table border="1" class="auto-style5">
            <tr>
                <td colspan="3" style="background-image: url(''); height: 120px;"></td>
            </tr>
            <tr>
                <td colspan="3" style="text-align: right; height: 24px;">
                    <div style="background-color: #3399cc; text-align: right">
                        <div style="text-align: right">
                            <span style="color: #ffffff"><strong>
                                <div style="text-align: center">
                                    <table style="width: 100%">
                                        <tr>
                                            <td>
                                                &nbsp;</td>
                                            <td style="width: 100px">
                                                <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="True" ForeColor="Yellow" NavigateUrl="~/DangNhap.aspx">Đăng nhập</asp:HyperLink>
                                            </td>
                                            <td style="width: 100px">
                                                <asp:HyperLink ID="HyperLink4" runat="server" Font-Bold="True" ForeColor="Yellow" NavigateUrl="~/TrangChu.aspx">Trang chủ </asp:HyperLink>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </strong></span>
                        </div>
                    </div>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" style="text-align: left">
                    <div style="text-align: left">
                        <table class="auto-style6">
                            <tr>
                                <td style="background-color: #003399; text-align: left;" class="auto-style9">
                                    <asp:DataList ID="DataList1" runat="server" Width="248px" DataSourceID="SqlDataSource1">
                                        <ItemTemplate>
                                            <asp:Label ID="titleLabel" runat="server" Text='<%# Eval("title") %>' />
                                            <br />
<br />
                                        </ItemTemplate>
                                    </asp:DataList>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=localhost;Initial Catalog=TrangTinTuc;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [title] FROM [tblCategory]"></asp:SqlDataSource>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 103px; background-color: #003399; text-align: left">&nbsp;<asp:Image ID="Image7" runat="server" ImageUrl="~/App_Themes/here.gif" Width="16px" Height="17px" />
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </div>
                    <div style="text-align: left">
                        <hr class="auto-style7" />
                        <table>
                            <tr>
                                <td style="background-image: url(''); width: 135px; height: 200px">
                                    <asp:Image ID="Image8" runat="server" />
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div style="text-align: left">
                        <table style="width: 141px; height: 204px">
                            <tr>
                                <td style="background-image: url(''); width: 100px">
                                    <asp:Image ID="Image9" runat="server" />
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div style="text-align: left">
                    </div>
                </td>
                <td class="auto-style4">
                    <asp:Login ID="Login2" runat="server" CssClass="auto-style11" OnAuthenticate="Login2_Authenticate" Width="452px">
                    </asp:Login>
                </td>
                <td class="auto-style8" style="text-align: right;">
                    <div style="text-align: center">
                    </div>
                    <div style="text-align: center">
                        <table style="width: 100%">
                            <tr>
                                <td style="height: 23px; background-color: #0099cc; text-align: left">
                                    <asp:Image ID="Image4" runat="server" />
                                    <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="White" Text="Sự kiện trong ngày"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 177px; text-align: left; width: 100%;">
                                    <asp:DataList ID="DataList2" runat="server" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" Width="221px">
                                        <AlternatingItemStyle BackColor="White" />
                                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                        <ItemStyle BackColor="#EFF3FB" />
                                        <ItemTemplate>
                                            title:
                                            <asp:Label ID="titleLabel" runat="server" Text='<%# Eval("title") %>' />
                                            <br />
                                            <br />
                                        </ItemTemplate>
                                        <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                    </asp:DataList>
                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:TrangTinTucConnectionString %>" SelectCommand="SELECT [title] FROM [tblNews]"></asp:SqlDataSource>
                                    </td>
                            </tr>
                        </table>
                        <hr />
                        <asp:Image ID="Image6" runat="server" Height="204px" Width="134px" />
                        &nbsp;
                        <br />
                        <asp:Image ID="Image5" runat="server" Height="190px" Width="134px" />
                    </div>
                </td>
            </tr>
            <tr>
                <td colspan="3" style="background-color: #ccffff">&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
