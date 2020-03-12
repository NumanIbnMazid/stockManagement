<%@ Page Title="" Language="C#" MasterPageFile="~/Management.Master" AutoEventWireup="true" CodeBehind="ItemSetupUI.aspx.cs" Inherits="stockmanagement.ItemSetupUI" %>
<asp:Content ID="Content3" ContentPlaceHolderID="title" runat="server">

   Item Setup

</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">


     <asp:Panel ID="Panel1" runat="server" style=" margin-bottom:50px; position: relative; left:-333px; margin-top:30px; top: 20px; width: 414px; margin-left: 16px;">

         <asp:Label ID="heading" runat="server" Text="Setup Item"  style="margin-left:0px; height: 40px; font-family:Algerian; font-size:25px; color:darkcyan; font-weight:700;"></asp:Label>

        <br /><br />

       <asp:Label ID="Label1" runat="server" Text="Category : "  ></asp:Label>
         <asp:DropDownList ID="categoryDropDownList" runat="server" style="margin-left: 53px" Width="226px" Height="25px"></asp:DropDownList>
         <br /><br />
        <asp:Label ID="Label2" runat="server" Text="Company: "  ></asp:Label>
         <asp:DropDownList ID="companyDropDownList" runat="server" style="margin-left: 56px" Width="231px" Height="25px"></asp:DropDownList>
         <br /><br />
         <asp:Label ID="Label3" runat="server" Text="Item Name : "  ></asp:Label>
        <asp:TextBox ID="itemTextBox" runat="server" style="margin-left: 46px; margin-top: 0px" Width="227px"></asp:TextBox>
         <br /><br />
         <asp:Label ID="Label4" runat="server" Text="Reorder level : "  ></asp:Label>
        <asp:TextBox ID="reorderTextBox" runat="server" style="margin-left: 25px; margin-top: 0px" Width="228px"></asp:TextBox>
          <br /><br />
         <asp:Button ID="itemsaveButton" runat="server" Text="Save" Height="34px" style="margin-left: 122px; margin-top: 0px" Width="153px" />
    
         <br /> <br /> 
         <asp:Label ID="resultLabel" runat="server" Text="" style="color:darkcyan; font-family:'Agency FB'; font-size: 20px; margin-left: 135px; margin-top:15px;"></asp:Label>
        <br /> <br /> 

         <asp:GridView ID="itemGridView" runat="server" Height="206px" style="margin-left: 123px; margin-top: 10px" Width="308px"></asp:GridView>
     </asp:Panel>
</asp:Content>
