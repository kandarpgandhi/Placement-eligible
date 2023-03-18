<%@ Page Title="" Language="C#" Theme="Theme2" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="signupPage.aspx.cs" Inherits="AssignmentProject_DOTNET.signupPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 425px;
            margin: auto;
            /*border: 2px solid #000000;*/
            background: rgb(255 0 255 / 0.04);
        }
        .auto-style2 {
            width: 174px;
            /*border: 2px solid #000000;
            border-radius: 20px;*/
        }
        .auto-style3 {
            text-align: center;
            font-size: 30px;
        }
        .auto-style4 {
            width: 229px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table cellpadding="3" cellspacing="3" class="auto-style1">
        <tr>
            <td class="auto-style3" colspan="2">SIGN UP FORM</td>
        </tr>
        <tr>
            <td class="auto-style2">FIRST NAME</td>
            <td class="auto-style4">
                <asp:TextBox ID="TextBoxFname" runat="server" Width="201px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Display="Dynamic" ErrorMessage="Please Enter FirstName" ForeColor="Red" SetFocusOnError="True" ControlToValidate="TextBoxFname">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">LAST NAME</td>
            <td class="auto-style4">
                <asp:TextBox ID="TextBoxLname" runat="server" Width="201px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="Dynamic" ErrorMessage="Please Enter LastName" ForeColor="Red" SetFocusOnError="True" ControlToValidate="TextBoxLname">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">GENDER</td>
            <td class="auto-style4">
                <asp:DropDownList ID="DropDownListGender" runat="server" Width="208px">
                    <asp:ListItem>SELECT</asp:ListItem>
                    <asp:ListItem>MALE</asp:ListItem>
                    <asp:ListItem>FEMALE</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" InitialValue="SELECT" runat="server" Display="Dynamic" ErrorMessage="Please Select a Gender" ForeColor="Red" SetFocusOnError="True" ControlToValidate="DropDownListGender">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">EMAIL-ID</td>
            <td class="auto-style4">
                <asp:TextBox ID="TextBoxEmail" runat="server" Width="201px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxEmail" Display="Dynamic" ErrorMessage="Please Enter a Valid Email" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" Display="Dynamic" ErrorMessage="Please Enter Email ID" ForeColor="Red" SetFocusOnError="True" ControlToValidate="TextBoxEmail">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">ADDRESS</td>
            <td class="auto-style4">
                <asp:TextBox ID="TextBoxAddress" runat="server" Width="201px" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" Display="Dynamic" ErrorMessage="Please Enter Address" ForeColor="Red" SetFocusOnError="True" ControlToValidate="TextBoxAddress">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">USER NAME</td>
            <td class="auto-style4">
                <asp:TextBox ID="TextBoxUserName" runat="server" Width="201px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" Display="Dynamic" ErrorMessage="Please Enter User Name" ForeColor="Red" SetFocusOnError="True" ControlToValidate="TextBoxUserName">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">PASSWORD</td>
            <td class="auto-style4">
                <asp:TextBox ID="TextBoxPassword" runat="server" Width="201px" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" Display="Dynamic" ErrorMessage="Please Enter Password" ForeColor="Red" SetFocusOnError="True" ControlToValidate="TextBoxPassword">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">CONFIRM PASSWORD</td>
            <td class="auto-style4">
                <asp:TextBox ID="TextBoxConfirmPassword" runat="server" Width="201px" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBoxPassword" ControlToValidate="TextBoxConfirmPassword" Display="Dynamic" ErrorMessage="Password is not identical" ForeColor="Red" SetFocusOnError="True">*</asp:CompareValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" Display="Dynamic" ErrorMessage="Please Enter Confirm Password" ForeColor="Red" SetFocusOnError="True" ControlToValidate="TextBoxConfirmPassword">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">
                <asp:Button ID="ButtonSignUp" runat="server" Height="32px" Text="SIGNUP" Width="77px" OnClick="ButtonSignUp_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">
                <a href="Default.aspx">Go To LogIn Page</a>
            </td>
        </tr>
    </table>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" BackColor="Silver" Font-Size="Larger" ForeColor="Red" />
</asp:Content>
