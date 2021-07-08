<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TrangChu.aspx.cs" Inherits="ProjectTrangTinTuc.TrangChu" %>

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

        .auto-style7 {
            width: 271px;
        }

        .auto-style4 {
            width: 80%;
            height: 400px;
        }

        .auto-style8 {
            width: 103%;
            height: 391px;
        }
        .auto-style9 {
            width: 176px;
            height: 187px;
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
        .auto-style16 {
            margin-left: 3px;
            margin-top: 4px;
        }
        .auto-style17 {
            margin-left: 95px;
        }
        .auto-style18 {
            height: 23px;
        }
        .auto-style19 {
            width: 176px;
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
                                    <asp:Button ID="btnSearch" runat="server" CssClass="auto-style17" Height="25px" Text="Button" Width="54px" />
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div style="text-align: left">
                        <hr class="auto-style7" />
                        <table>
                            <tr>
                                <td style="background-image: url(''); width: 135px; height: 200px">
                                    <asp:Image ID="Image8" runat="server" Height="146px" Width="141px" />
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div style="text-align: left">
                        <table style="width: 141px; height: 204px">
                            <tr>
                                <td style="background-image: url(''); width: 100px">
                                    <asp:Image ID="Image9" runat="server" Height="162px" Width="131px" />
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div style="text-align: left">
                    </div>
                </td>
                <td class="auto-style4">
                    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource3" EnableModelValidation="True">
                        <AlternatingItemTemplate>
                            <tr style="background-color: #FAFAD2;color: #284775;">
                                <td>
                                    <asp:Label ID="author_IDLabel" runat="server" Text='<%# Eval("author_ID") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="category_IDLabel" runat="server" Text='<%# Eval("category_ID") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="titleLabel" runat="server" Text='<%# Eval("title") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="dateLabel" runat="server" Text='<%# Eval("date") %>' />
                                </td>
                            </tr>
                        </AlternatingItemTemplate>
                        <EditItemTemplate>
                            <tr style="background-color: #FFCC66;color: #000080;">
                                <td>
                                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                                </td>
                                <td>
                                    <asp:TextBox ID="author_IDTextBox" runat="server" Text='<%# Bind("author_ID") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="category_IDTextBox" runat="server" Text='<%# Bind("category_ID") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="titleTextBox" runat="server" Text='<%# Bind("title") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="dateTextBox" runat="server" Text='<%# Bind("date") %>' />
                                </td>
                            </tr>
                        </EditItemTemplate>
                        <EmptyDataTemplate>
                            <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                                <tr>
                                    <td>No data was returned.</td>
                                </tr>
                            </table>
                        </EmptyDataTemplate>
                        <InsertItemTemplate>
                            <tr style="">
                                <td>
                                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                                </td>
                                <td>
                                    <asp:TextBox ID="author_IDTextBox" runat="server" Text='<%# Bind("author_ID") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="category_IDTextBox" runat="server" Text='<%# Bind("category_ID") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="titleTextBox" runat="server" Text='<%# Bind("title") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="dateTextBox" runat="server" Text='<%# Bind("date") %>' />
                                </td>
                            </tr>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <tr style="background-color: #FFFBD6;color: #333333;">
                                <td>
                                    <asp:Label ID="author_IDLabel" runat="server" Text='<%# Eval("author_ID") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="category_IDLabel" runat="server" Text='<%# Eval("category_ID") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="titleLabel" runat="server" Text='<%# Eval("title") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="dateLabel" runat="server" Text='<%# Eval("date") %>' />
                                </td>
                            </tr>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <table runat="server">
                                <tr runat="server">
                                    <td runat="server">
                                        <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                            <tr runat="server" style="background-color: #FFFBD6;color: #333333;">
                                                <th runat="server">author_ID</th>
                                                <th runat="server">category_ID</th>
                                                <th runat="server">title</th>
                                                <th runat="server">date</th>
                                            </tr>
                                            <tr id="itemPlaceholder" runat="server">
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr runat="server">
                                    <td runat="server" style="text-align: center;background-color: #FFCC66;font-family: Verdana, Arial, Helvetica, sans-serif;color: #333333;">
                                        <asp:DataPager ID="DataPager1" runat="server">
                                            <Fields>
                                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                            </Fields>
                                        </asp:DataPager>
                                    </td>
                                </tr>
                            </table>
                        </LayoutTemplate>
                        <SelectedItemTemplate>
                            <tr style="background-color: #FFCC66;font-weight: bold;color: #000080;">
                                <td>
                                    <asp:Label ID="author_IDLabel" runat="server" Text='<%# Eval("author_ID") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="category_IDLabel" runat="server" Text='<%# Eval("category_ID") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="titleLabel" runat="server" Text='<%# Eval("title") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="dateLabel" runat="server" Text='<%# Eval("date") %>' />
                                </td>
                            </tr>
                        </SelectedItemTemplate>
                    </asp:ListView>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:TrangTinTucConnectionString %>" SelectCommand="SELECT [author_ID], [category_ID], [title], [date] FROM [tblNews]"></asp:SqlDataSource>
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
                                            &nbsp;<asp:Label ID="titleLabel" runat="server" Text='<%# Eval("title") %>' />
                                            <br />
                                            <br />
                                        </ItemTemplate>
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
