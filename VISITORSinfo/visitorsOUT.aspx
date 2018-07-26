<%@ Page Title="" Language="C#" MasterPageFile="~/INITALpage.Master" AutoEventWireup="true" CodeBehind="visitorsOUT.aspx.cs" Inherits="VISITORSinfo.visitorsOUT" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style11 {
            width: 100%;
        }
        .auto-style12 {
            width: 379px;
        }
        .auto-style14 {
            width: 210px;
        }
        .auto-style15 {
            width: 203px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style11">
        <tr>
            <td class="auto-style12">visitors in </td>
            <td class="auto-style14">
                <asp:TextBox ID="txtvisitors" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style15">
                <asp:Button ID="btnid" runat="server" OnClick="btnid_Click" Text="Search by ID" />
            </td>
            <td>
                <asp:Button ID="btnname" runat="server" OnClick="btnname_Click" Text="Search by Name" />
            </td>
        </tr>
        <tr>
            <td colspan="4">
                <asp:GridView ID="GridView2" runat="server" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
                    <Columns>
                    <asp:TemplateField HeaderText="Sign out">
               <ItemTemplate  >
                   <asp:Button ID="b2" runat="server" Text="Click to sign out>>>" OnClick="b2_Click" />

               </ItemTemplate>
           </asp:TemplateField>
                </Columns>
                </asp:GridView>
               

                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MINIprojectConnectionString %>" SelectCommand="SELECT [FirstName], [LastName], [Type of ID] AS Type_of_ID, [ID Num] AS ID_Num FROM [visitorinfo] WHERE ([Status] = @Status)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="SIGNED IN" Name="Status" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>
