<%@ Page Title="" Language="C#" MasterPageFile="~/Management.Master" AutoEventWireup="true" CodeBehind="StockOutUI.aspx.cs" Inherits="stockmanagement.StockOutUI" %>
<asp:Content ID="Content3" ContentPlaceHolderID="title" runat="server">

    Stock Out

</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">

     <asp:Panel ID="Panel1" runat="server" style=" margin-bottom:50px; position: relative; left:-208px; margin-top:12px; top: 20px; width: 540px;">

         <asp:Label ID="heading" runat="server" Text="Stock Out"  style="margin-left:0px; height: 40px; font-family:Algerian; font-size:25px; color:darkcyan; font-weight:700;"></asp:Label>

        <br /><br />

       <asp:Label ID="Label1" runat="server" Text="Company : "  ></asp:Label>
         <asp:DropDownList ID="companyStockOutDropDownList" runat="server" style="margin-left: 96px" Width="226px" Height="25px"></asp:DropDownList>
         <br /><br />
        <asp:Label ID="Label2" runat="server" Text="Item: "  ></asp:Label>
         <asp:DropDownList ID="itemStockOutDropDownList" runat="server" style="margin-left: 133px" Width="231px" Height="25px"></asp:DropDownList>
         <br /><br />
         <asp:Label ID="Label3" runat="server" Text="Recorder Level : "  ></asp:Label>
        <asp:TextBox ID="recorderLevelstockOutTextBox" runat="server" style="margin-left: 58px; margin-top: 0px" Width="227px" ReadOnly="True"></asp:TextBox>
         <br /><br />
         <asp:Label ID="Label4" runat="server" Text="Available Quantity : "  ></asp:Label>
        <asp:TextBox ID="availableStockOutQuantityTextBox" runat="server" style="margin-left: 42px; margin-top: 0px" Width="228px" ReadOnly="True"></asp:TextBox>
          <br /><br />
         
         <asp:Label ID="Label5" runat="server" Text="Stock out Quantity : "  ></asp:Label>
        <asp:TextBox ID="stockOutQuantityTextBox" runat="server" style="margin-left: 38px; margin-top: 0px" Width="228px"></asp:TextBox>
         <br /><br />
         <asp:Button ID="stockOutItemAddButton" runat="server" Text="Add" Height="34px" style="margin-left: 164px; margin-top: 0px" Width="118px" />
    
      <br /><br />
         <asp:GridView ID="stockOutGridView" runat="server" style="margin-left: 167px" Width="315px"></asp:GridView>
          <br /><br />
         <asp:Button ID="sellButton" runat="server" Text="Sell" OnClick="sellButton_Click" style="margin-left: 2px" Width="130px" />
          <asp:Button ID="damageButton" runat="server" Text="Damage" OnClick="damageButton_Click" style="margin-left: 34px" Width="130px" />
            <asp:Button ID="lostButton" runat="server" Text="Lost" OnClick="lostButton_Click" style="margin-left: 34px" Width="132px" />

         <br /><br />
        

        <asp:Label ID="resultLabel" runat="server" Text="" style="color:darkcyan; font-family:'Agency FB'; font-size: 20px; margin-left: 135px; margin-top:15px;"></asp:Label>
        <br /> <br /> 


     </asp:Panel>
</asp:Content>
