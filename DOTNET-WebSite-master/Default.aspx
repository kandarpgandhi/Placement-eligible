<%@ Page Title="" Language="C#" Theme="Theme2" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AssignmentProject_DOTNET.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- This is for css-->
    <style type="text/css">        
        .auto-style1 {
            width: 425px;
            margin: auto;
            /*border: 2px solid rgb(62 187 251);*/            
            background: rgb(255 0 255 / 0.04);
        }
        .auto-style2 {
            width: 173px;
            font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif ;
        }
        .auto-style3 {
            text-align: center;
            font-size: 30px;
        }
        .auto-style4 {
            width: 288px;
            font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif ;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">    
    
    <table cellpadding="4" cellspacing="4" class="auto-style1">
        <tr>
            <td class="auto-style3" colspan="2">LOGIN FORM</td>
        </tr>
        <tr>
            <td class="auto-style2">USER NAME</td>
            <td class="auto-style4">
                <asp:TextBox ID="TextBoxUname" runat="server" Width="201px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxUname" Display="Dynamic" ErrorMessage="Please Enter User Name" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">PASSWORD</td>
            <td class="auto-style4">
                <asp:TextBox ID="TextBoxPass" runat="server" Width="201px" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxPass" Display="Dynamic" ErrorMessage="Please Enter PassWord" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">
                <%--<asp:Button ID="ButtonLogin" runat="server" Height="32px" Text="LOGIN" Width="79px" OnClick="ButtonLogin_Click" BackColor="#FFCC00" BorderColor="Red" BorderStyle="Groove" ForeColor="Black" />--%>
                <asp:Button ID="Button1" runat="server" Height="32px" Text="LOGIN" Width="79px" OnClick="ButtonLogin_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">
                <a href="signupPage.aspx">Link to the signUp Page</a>
            </td>
        </tr>
    </table>    
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" BackColor="Silver" Font-Size="Larger" ForeColor="Red" />
</asp:Content>
