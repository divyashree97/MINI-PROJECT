<%@ Page Title="" Language="C#" MasterPageFile="~/INITALpage.Master" AutoEventWireup="true" CodeBehind="homePAGE.aspx.cs" Inherits="VISITORSinfo.homePAGE" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style11 {
            width: 100%;
            height: 50px;
        }
        .auto-style13 {
            width: 561px;
            text-align: center;
        }
        .auto-style14 {
            text-align: center;
        }
        .auto-style15 {
            width: 561px;
            height: 76px;
        }
        .auto-style16 {
            height: 76px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style11">
        <tr>
            <td class="auto-style13">
                <asp:Button ID="btnvisitorsin" runat="server" OnClick="btnvisitorsin_Click" Text="VisitorsIN" />
            </td>
            <td class="auto-style14">
                <asp:Button ID="btnvisitorsout" runat="server" OnClick="btnvisitorsout_Click" Text="VISITORSout" />
            </td>
        </tr>
        <tr>
            <td class="auto-style15"></td>
            <td class="auto-style16"></td>
        </tr>
    </table>
</asp:Content>
