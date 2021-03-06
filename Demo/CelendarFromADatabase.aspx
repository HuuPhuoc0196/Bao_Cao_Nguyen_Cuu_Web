﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CelendarFromADatabase.aspx.cs" Inherits="CelendarFromADatabase" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Rendering a Calendar from a Database Table</title>
    <style type="text/css">
          #foot{  
            color: aquamarine;
            clear: both;
            background-color:rgb(31, 31, 82);
            text-align: center;
            font-size: 20px;
            width: 100%;
            padding: 15px;
            font-weight: bold;
            padding: 10px;
            border-top: 2px solid #ffffff;
       }
          #Content {
            float: left;
            background-color: aquamarine;
            width: 100%;
            min-height: 800px;
            margin-top: 5px;
            margin-left: 0px;
            margin-bottom: 5px;
            margin-right: 0px;
            border: 1px solid #ffffff;
        }
        
    </style>
</head>
<body bgcolor ="#CCCCFF">
    <form id="form1" runat="server">
        <asp:Image ID="Image1" runat="server" Height="140px" ImageUrl="~/Image/tilte.jpg" Width="100%" />
        <asp:Menu ID="Menu1" runat="server" BackColor="#B5C7DE" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="Large" ForeColor="#284E98" Orientation="Horizontal" StaticSubMenuIndent="10px" Width="100%">
            <DynamicHoverStyle BackColor="#284E98" ForeColor="White" />
            <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <DynamicMenuStyle BackColor="#B5C7DE" />    
            <DynamicSelectedStyle BackColor="#507CD1" />
            <Items>
                <asp:MenuItem Text="Trang chủ" Value="0" NavigateUrl="Default.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Trình chọn ngày" Value="1" NavigateUrl="Celendar.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Hiển thị lịch từ Database" Value="2" NavigateUrl="CelendarFromADatabase.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Lưu trữ quảng cáo trong XML" Value="3" NavigateUrl="Advertisements.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Lưu trữ quảng cáo trong Database" Value="4" NavigateUrl="AdRotatorDatabase.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Hiển thị vàchuyển" Value="5" NavigateUrl="Transfers.aspx"></asp:MenuItem>
            </Items>
            <StaticHoverStyle BackColor="#284E98" ForeColor="White" />
            <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <StaticSelectedStyle BackColor="#507CD1" />
        </asp:Menu>
<div id="Content">
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#000099" Text="Đề mô Rendering a Calendar from a Database Table."></asp:Label>
        <br />
        <br />
        <table style="width: 100%;">
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Mã nhân viên"></asp:Label>
                </td>
                <td class="auto-style1">
                    <asp:TextBox ID="txtMa" runat="server" Width="214px"></asp:TextBox>
                </td>
                <td rowspan="5">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="MaNV" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" AllowPaging="True">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="MaNV" HeaderText="Mã nhân viên" ReadOnly="True" SortExpression="MaNV" />
                <asp:BoundField DataField="HoNV" HeaderText="Họ nhân viên" SortExpression="HoNV" />
                <asp:BoundField DataField="TenNV" HeaderText="Tên nhân viên" SortExpression="TenNV" />
                <asp:BoundField DataField="NgaySinh" HeaderText="Ngày Sinh" ReadOnly="True" SortExpression="NgaySinh" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Họ"></asp:Label>
                </td>
                <td class="auto-style1">
                    <asp:TextBox ID="txtHo" runat="server" Width="213px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="Tên"></asp:Label>
                </td>
                <td class="auto-style1">
                    <asp:TextBox ID="txtTen" runat="server" Width="213px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Ngày Sinh</td>
                <td class="auto-style1">
                    <asp:TextBox ID="txtNgaySinh" runat="server" Width="213px"></asp:TextBox>
&nbsp;<asp:ImageButton ID="ibtnCelendar" runat="server" Height="20px" ImageUrl="~/Image/DICH-VU-IN-HINH-LEN-LICH-DE-BAN_2013102213553903.jpg" Width="62px" OnClick="ibtnCelendar_Click" />
                    <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" OnSelectionChanged="Calendar1_SelectionChanged" ShowGridLines="True" Width="220px">
                        <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                        <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                        <OtherMonthDayStyle ForeColor="#CC9966" />
                        <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                        <SelectorStyle BackColor="#FFCC66" />
                        <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                        <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                    </asp:Calendar>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#000099"></asp:Label>
                </td>
            </tr>
        </table>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnInsert" runat="server" Text="Insert" OnClick="btnInsert_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClick="btnCancel_Click" />
        <br />
        <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#FF3300"></asp:Label>
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT MaNV, HoNV, TenNV, CONVERT(nvarchar(50), NgaySinh, 103 ) as NgaySinh FROM NhanVien ORDER BY TenNV" DeleteCommand="DELETE NhanVien WHERE MaNV = @MaNV" UpdateCommand="UPDATE NhanVien SET HoNV = @HoNV, TenNV = @TenNV WHERE MaNV = @MaNV">
            <DeleteParameters>
                <asp:Parameter Name="MaNV" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:ControlParameter ControlID="GridView1" Name="HoNV" PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="GridView1" Name="TenNV" PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="GridView1" Name="MaNV" PropertyName="SelectedValue" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />

    </div>
        <div id ="foot">
             Họ và Tên: Lê Hữu Phước</br>
             MSSV: 1551010103</br>
             Sinh viên trường đại học Mở TP.HCM
        </div>


    </form>
</body>
</html>
