<%@ Page Title="" Language="C#" MasterPageFile="~/Management.Master" AutoEventWireup="true" CodeBehind="IndexUI.aspx.cs" Inherits="stockmanagement.IndexUI" %>
<asp:Content ID="Content3" ContentPlaceHolderID="title" runat="server">

   Home</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">

    <asp:Panel ID="Panel1" runat="server" style=" margin-bottom:50px; position: relative; left:-350px; margin-top:30px;"> 

        <asp:Label ID="heading" runat="server" Text="Search & View Items Summary"  style="margin-left:0px; height: 40px; font-family:Algerian; font-size:25px; color:darkcyan; font-weight:700;"></asp:Label>

        <br /><br />
    
        <asp:Label ID="Label1" runat="server" Text="Company : "  ></asp:Label>
        <asp:DropDownList ID="companyViewSalesDropDownList" runat="server" style="margin-left: 96px" Width="226px" Height="26px"></asp:DropDownList>
         <br /><br />
        <asp:Label ID="Label2" runat="server" Text="Category: "  ></asp:Label>
        <asp:DropDownList ID="categoryViewSaleDropDownList" runat="server" style="margin-left: 103px" Width="231px" Height="29px"></asp:DropDownList>
         <br /><br />
          
        <asp:Button ID="searchButton" runat="server" Text="Search" Height="34px" style="margin-left: 170px; margin-top: 0px" Width="197px" />
    
        <br /><br />

        <asp:Label ID="resultLabel" runat="server" Text="" style="color:darkcyan; font-family:'Agency FB'; font-size: 20px; margin-left: 135px; margin-top:15px;"></asp:Label>
        <br /> <br /> 

        <asp:GridView ID="searchItemGridView" runat="server" style="margin-left: 85px" Width="361px"></asp:GridView>
    </asp:Panel>
</asp:Content>
