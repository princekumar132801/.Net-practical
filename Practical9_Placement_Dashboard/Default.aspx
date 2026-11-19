<%@ Page Title="Placement Dashboard" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Practical9._Default" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Placement Dashboard</h2>
    <hr />
    <h3>Placement Overview</h3>
    <table border="1" cellpadding="8" style="border-collapse:collapse; margin-bottom:15px;">
        <tr>
            <td><strong>Total Students Placed:</strong></td>
            <td>
                <asp:Label ID="lblTotalPlaced" runat="server" Text="0"></asp:Label>
            </td>
        </tr>
        <tr>
            <td><strong>Highest Package (LPA):</strong></td>
            <td>
                <asp:Label ID="lblHighestPackage" runat="server" Text="0"></asp:Label>
            </td>
        </tr>
        <tr>
            <td><strong>Average Package (LPA):</strong></td>
            <td>
                <asp:Label ID="lblAvgPackage" runat="server" Text="0"></asp:Label>
            </td>
        </tr>
    </table>
    <p style="margin-bottom:25px;">
        <asp:HyperLink ID="lnkCompanyDetails" runat="server" NavigateUrl="~/CompanyDetails.aspx" Font-Bold="true">
            → View Placed Students & Company Details
        </asp:HyperLink>
    </p>
    <hr />
    <h3>All Students Placement Status</h3>
    <asp:GridView ID="gvAllStudents" runat="server" AutoGenerateColumns="true" CellPadding="6" GridLines="Both"
        HeaderStyle-BackColor="#263746" HeaderStyle-ForeColor="White" RowStyle-BackColor="White"
        AlternatingRowStyle-BackColor="#F2F5F8">
    </asp:GridView>
</asp:Content>
