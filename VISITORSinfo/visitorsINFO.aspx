<%@ Page Title="" Language="C#" MasterPageFile="~/INITALpage.Master" AutoEventWireup="true" CodeBehind="visitorsINFO.aspx.cs" Inherits="VISITORSinfo.visitorsINFO" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style11 {
            width: 100%;
        }
        .auto-style15 {
            width: 211px;
            height: 47px;
        }
        .auto-style16 {
            height: 47px;
        }
        .auto-style17 {
            margin-top: 0px;
        }
        .auto-style18 {
            width: 211px;
            height: 40px;
        }
        .auto-style19 {
            height: 40px;
        }
        .auto-style20 {
            width: 211px;
            height: 41px;
        }
        .auto-style21 {
            height: 41px;
        }
        .auto-style22 {
            width: 211px;
            height: 43px;
        }
        .auto-style23 {
            height: 43px;
        }
        .auto-style24 {
            width: 211px;
            height: 38px;
        }
        .auto-style25 {
            height: 38px;
        }
        .auto-style26 {
            width: 211px;
            height: 35px;
        }
        .auto-style27 {
            height: 35px;
        }
        .auto-style28 {
            width: 211px;
            height: 39px;
        }
        .auto-style29 {
            height: 39px;
        }
        .auto-style30 {
            width: 211px;
            height: 37px;
        }
        .auto-style31 {
            height: 37px;
        }
        .auto-style32 {
            width: 211px;
            height: 51px;
        }
        .auto-style33 {
            height: 51px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style11">
        <tr>
            <td class="auto-style15">First Name</td>
            <td class="auto-style16">
                <asp:TextBox ID="txtfname" runat="server" Width="202px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtfname" Display="None" ErrorMessage="Enter the  Name" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style18">Last Name</td>
            <td class="auto-style19">
                <asp:TextBox ID="txtlname" runat="server" CssClass="auto-style17" Height="16px" Width="205px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtlname" Display="None" ErrorMessage="Enter the Name" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style20">Company</td>
            <td class="auto-style21">
                <asp:TextBox ID="txtcomp" runat="server" Width="204px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtcomp" Display="None" ErrorMessage="Enter the Company Name" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style22">Visiting</td>
            <td class="auto-style23">
                <asp:TextBox ID="txtvisit" runat="server" Width="202px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtvisit" Display="None" ErrorMessage="Enter the Visiting Company Name" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style20">Type of ID</td>
            <td class="auto-style21">
                <asp:DropDownList ID="ddlid" runat="server" Height="33px" Width="209px">
                    <asp:ListItem>PAN NO.</asp:ListItem>
                    <asp:ListItem>VOTER ID</asp:ListItem>
                    <asp:ListItem>DRIVER LICENSE</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>OTHERS</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="ddlid" Display="None" ErrorMessage="Enter The Type of ID" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style24">ID No.</td>
            <td class="auto-style25">
                <asp:TextBox ID="txtid" runat="server" Width="206px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtid" Display="None" ErrorMessage="Enter the ID" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style26">PAN No.</td>
            <td class="auto-style27">
                <asp:TextBox ID="txtpan" runat="server" Width="203px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtpan" Display="None" ErrorMessage="Enter the Pan  Number" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style32">Vehicle No.</td>
            <td class="auto-style33">
                <asp:TextBox ID="txtvehicle" runat="server" Width="203px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtvehicle" Display="None" ErrorMessage="Enter the Valid Vehicle No." ForeColor="Red" ValidationExpression="^[A-Z]{2}[0-9]{2}[-][A-Z]{2}[0-9]{4}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style28">Contact No.</td>
            <td class="auto-style29">
                <asp:TextBox ID="txtcont" runat="server" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtcont" Display="None" ErrorMessage="Enter the  Valid Contact No." ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtcont" Display="None" ForeColor="Red" ValidationExpression="^([6-9]{1})([0-9]{9})$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style30">Purpose of Visit</td>
            <td class="auto-style31">
                <asp:TextBox ID="txtpurp" runat="server" Width="197px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtpurp" Display="None" ErrorMessage="Enter the Purpose of Visit" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style30"></td>
            <td class="auto-style31">
                <asp:Button ID="btnsave" runat="server"  CausesValidation="false" OnClick="btnsave_Click" Text="save" />
                <asp:Button ID="btncancel" runat="server" CausesValidation="false" OnClick="btncancel_Click" Text="cancel" />
            </td>
        </tr>
    </table>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
</asp:Content>
