<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QuanLyBaiViet.aspx.cs" Inherits="ProjectTrangTinTuc.Admin.QuanLyBaiViet" %>

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

        .auto-style18 {
            height: 23px;
        }
        .auto-style10 {
            width: 100%;
            height: 64px;
        }
        .auto-style11 {
            height: 64px;
            width: 889px;
        }
        .auto-style12 {
            width: 100px;
            height: 64px;
        }
        
        .auto-style3 {
            height: 391px;
            width: 340px;
        }

        .auto-style6 {
            width: 95%;
        }

        .auto-style9 {
            width: 176px;
            height: 187px;
        }
        .auto-style19 {
            width: 176px;
        }
        .auto-style16 {
            margin-left: 3px;
            margin-top: 4px;
        }
        .auto-style17 {
            margin-left: 95px;
        }
        
        .auto-style7 {
            width: 271px;
        }

        .auto-style4 {
            width: 80%;

        }

        .auto-style20 {
            margin-top: 0px;
            margin-bottom: 0px;
        }

        .auto-style8 {
            width: 103%;
            height: 391px;
        }
        .auto-style21 {
            margin-left: 35px;
        }
        .auto-style22 {
            margin-left: 0px;
            margin-top: 4px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <table border="1" class="auto-style5">
            <tr>
                <td colspan="3" style="background-image: url(''); height: 120px;"></td>
            </tr>
            <tr>
                <td colspan="3" style="text-align: right; " class="auto-style18">
                    <div style="background-color: #3399cc; text-align: right">
                        <div style="text-align: right">
                            <span style="color: #ffffff"><strong>
                                <div style="text-align: center">
                                    <table class="auto-style10">
                                        <tr>
                                            <td class="auto-style11">
                                                </td>
                                            <td class="auto-style12">
                                                <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="True" ForeColor="Yellow" NavigateUrl="~/DangNhap.aspx">Đăng nhập</asp:HyperLink>
                                            </td>
                                            <td class="auto-style12">
                                                <asp:HyperLink ID="HyperLink4" runat="server" Font-Bold="True" ForeColor="Yellow" NavigateUrl="~/TrangChu.aspx">Trang chủ</asp:HyperLink>
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
                                <td text-align: left;" class="auto-style9">
                                    <asp:DataList ID="DataList1" runat="server" Width="235px" DataSourceID="SqlDataSource1">
                                        <ItemTemplate>
                                            &nbsp;<asp:Label ID="titleLabel" runat="server" Text='<%# Eval("title") %>' />
                                            <br />
<br />
                                        </ItemTemplate>
                                    </asp:DataList>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=localhost;Initial Catalog=TrangTinTuc;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [title] FROM [tblCategory]"></asp:SqlDataSource>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: left" class="auto-style19">&nbsp;&nbsp;
                                    Tìm kiếm<asp:TextBox ID="txtSearch" runat="server" CssClass="auto-style16" Width="240px"></asp:TextBox>
                                    <asp:Button ID="btnSearch" runat="server" CssClass="auto-style17" Height="25px" Text="Tìm" Width="54px" />
                                    <br />
                                    <br />
                                    <br />
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div style="text-align: left">
                        <hr class="auto-style7" />
                        <table>
                            <tr>
                                <td style="background-image: url(''); width: 135px; height: 200px">
                                    <asp:Image ID="Image8" runat="server" Height="172px" Width="124px" ImageUrl="~/Images/BIDV_901_LLL.gif" />
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div style="text-align: left">
                        <table style="width: 141px; height: 204px">
                            <tr>
                                <td style="background-image: url(''); width: 100px">
                                    <asp:Image ID="Image9" runat="server" Height="162px" Width="131px" ImageUrl="~/Images/CMC_020108_LLL.gif" />
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div style="text-align: left">
                    </div>
                </td>
                <td class="auto-style4">
                    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style20" Height="28px">
                        <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/Admin/QuanLyBaiViet.aspx">Quản lí bài viết</asp:HyperLink>
                        <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Admin/QuanLyUser.aspx">Quản lí User</asp:HyperLink>
                        <br />
                        <div>
                            <asp:Label ID="Label6" runat="server" Text="News ID :"></asp:Label>
                            &nbsp;<asp:TextBox ID="txtCode" runat="server" ReadOnly="True" style="margin-left: 1px" Width="84px"></asp:TextBox>
                            <br />
                            <asp:Label ID="Label2" runat="server" Text="Category"></asp:Label>
                            &nbsp;<asp:DropDownList ID="ddlCategory" runat="server" DataSourceID="SqlDataSource4" DataTextField="title" DataValueField="title" style="margin-left: 0px">
                                <asp:ListItem Value="Cai">Cai</asp:ListItem>
                                <asp:ListItem Value="Chiec">Chiec</asp:ListItem>
                                <asp:ListItem Value="Bo">Bo</asp:ListItem>
                                <asp:ListItem Value="kilogam">kilogam</asp:ListItem>
                            </asp:DropDownList>
                            <br />
                            <asp:Label ID="Label7" runat="server" Text="Author ID :"></asp:Label>
                            &nbsp;<asp:TextBox ID="txtAuthorID" runat="server" ReadOnly="True" style="margin-left: 1px" Width="84px"></asp:TextBox>
                            <br />
                            <asp:Label ID="Label3" runat="server" Text="Title: "></asp:Label>
                            <asp:TextBox ID="txtTitle" runat="server" style="margin-left: 0px" Width="126px"></asp:TextBox>
                            <br />
                            <asp:Label ID="Label4" runat="server" Text="Image:"></asp:Label>
                            &nbsp;<asp:TextBox ID="txtImage" runat="server" style="margin-left: 0px"></asp:TextBox>
                            <br />
                            <asp:Label ID="Label5" runat="server" Text="Date: "></asp:Label>
                            &nbsp;<asp:TextBox ID="txtDate" runat="server" style="margin-left: 0px"></asp:TextBox>
                        </div>
                        <asp:Button ID="btnInsert" runat="server" OnClick="btnInsert_Click" Text="Insert" />
                        <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" style="margin-left: 53px" Text="Update" />
                        <asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click" style="margin-left: 71px" Text="Delete" />
                        <br />
                        &nbsp;&nbsp; Tìm kiếm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtSearch0" runat="server" CssClass="auto-style22" Width="240px"></asp:TextBox>
                        <asp:Button ID="btnSearch0" runat="server" CssClass="auto-style21" Height="25px" Text="Tìm" Width="54px" />
                        <asp:GridView ID="gvNews" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" EnableModelValidation="True" ForeColor="#333333" GridLines="None" Height="93px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
                                <asp:BoundField DataField="news_ID" HeaderText="news_ID" SortExpression="news_ID" />
                                <asp:BoundField DataField="category_ID" HeaderText="category_ID" SortExpression="category_ID" />
                                <asp:BoundField DataField="author_ID" HeaderText="author_ID" SortExpression="author_ID" />
                                <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
                                <asp:BoundField DataField="body" HeaderText="body" SortExpression="body" />
                                <asp:BoundField DataField="picture" HeaderText="picture" SortExpression="picture" />
                                <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                                <asp:CommandField ButtonType="Button" ShowEditButton="True" />
                                <asp:CommandField ButtonType="Button" ShowDeleteButton="True" />
                            </Columns>
                            <EditRowStyle BackColor="#7C6F57" />
                            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#E3EAEB" />
                            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:TrangTinTucConnectionString %>" SelectCommand="SELECT [title] FROM [tblCategory]"></asp:SqlDataSource>
                    </asp:Panel>
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
                                    <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource2">
                                        <ItemTemplate>
                                            &nbsp;<asp:Label ID="titleLabel3" runat="server" Text='<%# Eval("title") %>' />
                                            <br />
                                            <br />
                                        </ItemTemplate>
                                    </asp:DataList>
                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:TrangTinTucConnectionString %>" SelectCommand="SELECT [title] FROM [tblNews]"></asp:SqlDataSource>
                                    </td>
                            </tr>
                        </table>
                        <hr />
                        <asp:Image ID="Image6" runat="server" Height="204px" Width="134px" ImageUrl="~/Images/LG_SR_1412.gif" />
                        &nbsp;
                        <br />
                        <asp:Image ID="Image5" runat="server" Height="190px" Width="134px" ImageUrl="~/Images/thegioididong_SL_2403.gif" />
                    </div>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
