﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Celendar.aspx.cs" Inherits="Celendar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title> Celendar </title>
    <style>
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
<body bgcolor = "#ff9933">
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


    <div aria-haspopup="False" lang="ace">
    <div id="Content">
                <br />
                <br />
    
                <asp:Label ID="Label1" runat="server" Text="Nhập ngày tháng năm ở ô dưới"></asp:Label>
                &nbsp;hoặc click vào biểu tượng
                <br />
                <asp:TextBox ID="TextBox1" runat="server" Height="25px" AutoPostBack="True" OnTextChanged="TextBox1_TextChanged" Width="168px"></asp:TextBox>
                <asp:ImageButton ID="ImageButton1" runat="server" Height="32px" ImageUrl="~/Image/DICH-VU-IN-HINH-LEN-LICH-DE-BAN_2013102213553903.jpg" OnClick="ImageButton1_Click1" style="margin-right: 0px" ToolTip="Click me" Width="103px"/>
                &nbsp;<asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Full" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="213px" OnSelectionChanged="Calendar1_SelectionChanged" ShowGridLines="True" Width="268px" NextMonthText="&gt;" PrevMonthText="&lt;">
                    <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                    <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                    <OtherMonthDayStyle ForeColor="#CC9966" />
                    <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                    <SelectorStyle BackColor="#FFCC66" />
                    <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                    <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                </asp:Calendar>
    
                <br />
                <br />
                <asp:Label ID="lblMess" runat="server" Font-Size="X-Large" ForeColor="Blue"></asp:Label>
    
                <br />
                <br />
   </div>

        </div>
        <div id ="foot">
             Họ và Tên: Lê Hữu Phước</br>
             MSSV: 1551010103</br>
             Sinh viên trường đại học Mở TP.HCM
        </div>


    </form>
</body>
</html>
