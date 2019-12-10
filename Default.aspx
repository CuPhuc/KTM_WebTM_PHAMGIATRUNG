<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Tên_xe" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
        <asp:BoundField DataField="Tên_xe" HeaderText="Tên_xe" SortExpression="Tên_xe" />
        <asp:BoundField DataField="Dòng_xe" HeaderText="Dòng_xe" SortExpression="Dòng_xe" />
        <asp:BoundField DataField="Giá_xe" HeaderText="Giá_xe" SortExpression="Giá_xe" />
    </Columns>
    <FooterStyle BackColor="White" ForeColor="#000066" />
    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
    <RowStyle ForeColor="#000066" />
    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="#007DBB" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#00547E" />
</asp:GridView>
    <br />
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Tên_xe" DataSourceID="SqlDataSource1" DefaultMode="Insert" GridLines="Horizontal" Height="50px" Width="125px">
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        <Fields>
            <asp:BoundField DataField="Tên_xe" HeaderText="Tên_xe" ReadOnly="True" SortExpression="Tên_xe" />
            <asp:BoundField DataField="Dòng_xe" HeaderText="Dòng_xe" SortExpression="Dòng_xe" />
            <asp:BoundField DataField="Giá_xe" HeaderText="Giá_xe" SortExpression="Giá_xe" />
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
    </asp:DetailsView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuanLyConnectionString1 %>" DeleteCommand="DELETE FROM [Table] WHERE [Tên xe] = @Tên_xe" InsertCommand="INSERT INTO [Table] ([Tên xe], [Dòng xe], [Giá xe]) VALUES (@Tên_xe, @Dòng_xe, @Giá_xe)" ProviderName="<%$ ConnectionStrings:QuanLyConnectionString1.ProviderName %>" SelectCommand="SELECT [Tên xe] AS Tên_xe, [Dòng xe] AS Dòng_xe, [Giá xe] AS Giá_xe FROM [Table]" UpdateCommand="UPDATE [Table] SET [Dòng xe] = @Dòng_xe, [Giá xe] = @Giá_xe WHERE [Tên xe] = @Tên_xe">
    <DeleteParameters>
        <asp:Parameter Name="Tên_xe" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Tên_xe" Type="String" />
        <asp:Parameter Name="Dòng_xe" Type="String" />
        <asp:Parameter Name="Giá_xe" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Dòng_xe" Type="String" />
        <asp:Parameter Name="Giá_xe" Type="String" />
        <asp:Parameter Name="Tên_xe" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
    <div class="end">
        <div class="controlImgEnd">
            <a id="logo" href="https://www.bmw.vn" target="_blank"><img src="img/bmw.jpg" title="Click để vào BMW Việt Nam và lựa chọn dòng xe" alt="img">
            <a id="logo" href="https://www.facebook.com/Official.BMWVietnam/" target="_blank"><img src="img/facebook.png" title="Click để vào Facebook" alt="img">
            <a id="logo" href="https://www.instagram.com/bmw/" target="_blank"><img src="img/instagram.png"  title="Click để vào Instagram" alt="img">
            <a id="logo" href="https://www.bmw.vn/vi/ssl/request-a-test-drive.html#/bookmark=aHR0cHM6Ly9ibXcudXNlcnJlZ2lzdHJhdGlvbi5uZXQvZnJvbnQvZm9ybS9ibXctdmlldG5hbS12bi10ZA==" target="_blank"><img src="http://suzukiworld.vn/wp-content/uploads/2017/11/dang-ky-lai-thu.png"  width="100px" title="Click để vào đăng kí lái thử" alt="Đăng kí lái thử" /></a>
        </div>
    </div>
</asp:Content>

