<%@ Page Title="" Language="C#" Theme="Theme2" AutoEventWireup="true" CodeBehind="ShowData.aspx.cs" Inherits="AssignmentProject_DOTNET.ShowData" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- this is for css-->
    <style type="text/css">
        .auto-style1 {
            width: 425px;
            margin: auto;
            /*border: 2px solid #000000;*/
            background: rgb(255 0 255 / 0.04);
        }
        .auto-style2 {
            text-align: center;
            font-size: 30px;
        }
        .auto-style3 {
            width: 179px;
        }
        /*.auto-style4 {
            text-align: center;
            margin: auto;
            position: relative;
            
        }*/
        .auto-style5 {
            width: 425px;
            margin: auto;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>

        <table cellpadding="4" cellspacing="4" class="auto-style1">
            <tr>
                <td class="auto-style2" colspan="2">placement eligibility checking </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label1" runat="server" Text="IDNO"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBoxIdno" runat="server" Width="201px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label2" runat="server" Text="CPI"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBoxCpi" runat="server" Width="201px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>
                    <asp:Button ID="ButtonSubmit" runat="server" Height="27px" Text="SUBMIT" Width="71px" OnClick="ButtonSubmit_Click" />
                </td>
            </tr>
        </table>
        <br />
        <br />        
    </div>

    <div>
        <%--<asp:Button ID="ButtonLogout" runat="server" Height="32px" OnClick="Button1_Click" Text="LOGOUT" Width="74px" />
        <asp:Button ID="ButtonShow" runat="server" Height="32px" Text="SHOW ALL" Width="74px" />--%>
        
        <table cellpadding="4" cellspacing="4" class="auto-style5">
            <tr>
                <td><asp:Button ID="ButtonLogout" runat="server" Height="32px" OnClick="ButtonLogout_Click" Text="LOGOUT" Width="74px" /></td>
                <td><asp:Button ID="ButtonShow" runat="server" Height="32px" Text="SHOW ALL" Width="74px" OnClick="ButtonShow_Click" /></td>
            </tr>
        </table>
        
    </div>
</asp:Content>
