<%@ Page Title="" Language="C#" MasterPageFile="~/Management.Master" AutoEventWireup="true" CodeBehind="StockInUI.aspx.cs" Inherits="stockmanagement.StockInUI" %>
<asp:Content ID="Content3" ContentPlaceHolderID="title" runat="server">

    Stock In

</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">

     <asp:Panel ID="Panel1" runat="server" style=" margin-bottom:50px; position: relative; left:-350px; margin-top:30px;">

         <asp:Label ID="heading" runat="server" Text="Stock In"  style="margin-left:0px; height: 40px; font-family:Algerian; font-size:25px; color:darkcyan; font-weight:700;"></asp:Label>

        <br /><br />

       <asp:Label ID="Label1" runat="server" Text="Company : "  ></asp:Label>
         <asp:DropDownList ID="companyStockInDropDownList" runat="server" style="margin-left: 93px" Width="229px" Height="25px"></asp:DropDownList>
         <br /><br />
        <asp:Label ID="Label2" runat="server" Text="Item: "  ></asp:Label>
         <asp:DropDownList ID="itemStockInDropDownList" runat="server" style="margin-left: 131px" Width="228px" Height="25px"></asp:DropDownList>
         <br /><br />
         <asp:Label ID="Label3" runat="server" Text="Recorder Level : "  ></asp:Label>
        <asp:TextBox ID="recorderLevelstockInTextBox" runat="server" style="margin-left: 55px; margin-top: 0px" Width="222px" ReadOnly="True"></asp:TextBox>
         <br /><br />
         <asp:Label ID="Label4" runat="server" Text="Available Quantity : "  ></asp:Label>
        <asp:TextBox ID="availableInQuantityTextBox" runat="server" style="margin-left: 37px; margin-top: 0px" Width="222px" ReadOnly="True"></asp:TextBox>
          <br /><br />
         
         <asp:Label ID="Label5" runat="server" Text="Stock in Quantity : "  ></asp:Label>
        <asp:TextBox ID="stockInQuantityTextBox" runat="server" style="margin-left: 44px; margin-top: 0px" Width="220px"></asp:TextBox>
         <br /><br />
         <asp:Button ID="stockitemsaveButton" runat="server" Text="Save" Height="34px" style="margin-left: 165px; margin-top: 0px" Width="129px" OnClick="stockitemsaveButton_Click" />
         <br /><br />

         <asp:Label ID="resultLabel" runat="server" Text="" style="color:darkcyan; font-family:'Agency FB'; font-size: 20px; margin-left: 135px; margin-top:15px;"></asp:Label>
        <br /> <br /> 
        <asp:GridView ID="stockInGridView" runat="server" Height="206px" style="margin-left: 163px; margin-top: 10px" Width="308px"></asp:GridView>
    </asp:Panel>
</asp:Content>
