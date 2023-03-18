<%@ Page Title="" Language="C#" Theme="Theme2" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="showDetail.aspx.cs" Inherits="AssignmentProject_DOTNET.showDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>

    <asp:GridView ID="GridView1" runat="server" BackColor="Fuchsia" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" HorizontalAlign="center" Height="391px" Width="509px">
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="idno" HeaderText="idno" SortExpression="idno" />
            <asp:BoundField DataField="cpi" HeaderText="cpi" SortExpression="cpi" />
        </Columns>
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <RowStyle BackColor="White" ForeColor="#003399" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <SortedAscendingCellStyle BackColor="#EDF6F6" />
        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
        <SortedDescendingCellStyle BackColor="#D6DFDF" />
        <SortedDescendingHeaderStyle BackColor="#002876" />
    </asp:GridView>

    </div>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [cpiTBL] WHERE [Id] = @Id" InsertCommand="INSERT INTO [cpiTBL] ([idno], [cpi]) VALUES (@idno, @cpi)" SelectCommand="SELECT * FROM [cpiTBL] WHERE ([cpi] &gt;= @cpi)" UpdateCommand="UPDATE [cpiTBL] SET [idno] = @idno, [cpi] = @cpi WHERE [Id] = @Id">
    <DeleteParameters>
        <asp:Parameter Name="Id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="idno" Type="String" />
        <asp:Parameter Name="cpi" Type="Double" />
    </InsertParameters>
    <SelectParameters>
        <asp:ControlParameter ControlID="GridView1" DefaultValue="8.0" Name="cpi" PropertyName="SelectedValue" Type="Double" />
    </SelectParameters>
    <UpdateParameters>
        <asp:Parameter Name="idno" Type="String" />
        <asp:Parameter Name="cpi" Type="Double" />
        <asp:Parameter Name="Id" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>
