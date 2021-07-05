<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TrangChu.aspx.cs" Inherits="ProjectTrangTinTuc.TrangChu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style5 {
            width: 1351px;
            height: 1022px;
            margin-bottom: 0px;
        }

        .auto-style2 {
            width: 478px;
            margin-left: 232px;
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
            width: 82%;
            height: 391px;
        }

        .auto-style8 {
            width: 99%;
            height: 391px;
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
                                                <marquee class="auto-style2" direction="lef"> Nhóm 2 Nguyễn Văn Kiên -&nbsp; Đào Mạnh Cường&nbsp; -&nbsp; Nghiêm Thế Chiến</marquee>
                                            </td>
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
                                <td style="width: 103px; height: 187px; background-color: #003399; text-align: left;">
                                    <asp:DataList ID="DataList1" runat="server" DataKeyField="Group_ID" Width="248px">
                                        <ItemTemplate>
                                            <table style="width: 100%;">
                                                <tr>
                                                    <td style="width: 100%">
                                                        <asp:Image ID="Image1" runat="server" />
                                                        &nbsp;
                                                        <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" ForeColor="#FFFFFF" NavigateUrl='<%# "Nhomtintuc.aspx?Group_ID="+Eval("Group_ID") %>' Text='<%# Eval("Title") %>' Width="143px"></asp:HyperLink>
                                                    </td>
                                                </tr>
                                            </table>
                                        </ItemTemplate>
                                    </asp:DataList>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 103px; background-color: #003399; text-align: left">&nbsp;<asp:Image ID="Image7" runat="server" ImageUrl="~/App_Themes/here.gif" Width="16px" />
                                    &nbsp;
                                </td>
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
                <td class="auto-style4"></td>
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
                                    <asp:DataList ID="DataList2" runat="server" DataKeyField="New_ID">
                                        <ItemTemplate>
                                            <div style="text-align: center">
                                                <table style="width: 100%">
                                                    <tr>
                                                        <td style="width: 100%; text-align: justify">
                                                            <asp:Image ID="Image2" runat="server" ImageUrl="~/App_Themes/Chi_tiet.gif" />
                                                            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# "ChiTiet.aspx?Group_ID="+Eval("Group_ID")+"&New_ID="+Eval("New_ID") %>' Text='<%# Eval("Title_News") %>'></asp:HyperLink>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </ItemTemplate>
                                    </asp:DataList>
                                    &nbsp;&nbsp; </td>
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
                <td colspan="3" height="80" style="background-color: #ccffff"><span style="font-size: 14pt; color: #0033ff"><strong>Project C#</strong></span><br />
                    <strong><span style="color: #0000cc">Nguyen Van Kien - Dao Manh Cuong - Nghiem The Chien</span></strong></td>
            </tr>
        </table>
    </form>
</body>
</html>
